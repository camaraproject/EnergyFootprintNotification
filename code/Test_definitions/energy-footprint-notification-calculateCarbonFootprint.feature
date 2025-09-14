Feature: CAMARA Energy Footprint Notification API v0.1.0 - Operation calculateCarbonFootprint and carbonFootprintNotification
# Input to be provided by the implementation to the tester
#
# Implementation indications:
#
# Testing assets:
# * One or more application instances whose carbon footprint can be evaluated.
#
# References to OAS spec schemas refer to schemas specified in energy-footprint-notification.yaml, version 0.1.0

  Background: Common calculate-carbon-footprint setup
    Given an environment at "apiRoot"
    And the path "/energy-footprint-notification/v0.1/calculate-carbon-footprint"
    And the header "Content-Type" is set to "application/json"
    And the header "Authorization" is set to a valid access token
    And the header "x-correlator" complies with the schema at "#/components/schemas/XCorrelator"
    And the request body is set by default to a request body compliant with the schema

  # Happy path scenarios

  # This first scenario serves as a minimum
  @calculate-energy-consumption_01_generic_success_scenario_one_instance
  Scenario: Common validations for any success scenario, just one instance id for an application is provided
    # Valid testing default request body compliant with the schema
    Given the request body property "$.service" carries one valid "$.AppInstanceId"
    And "$.notificationSink" is set to a proper value
    And the request body is set to a valid request body
    When the HTTP "POST" request is sent
    Then the response status code is 201
    And the response header "Content-Type" is "application/json"
    And the response header "x-correlator" has same value as the request header "x-correlator"
    # The response has to comply with the generic response schema which is part of the spec
    And the response body complies with the OAS schema at "/components/schemas/ReportCreationRequest"
    And "$.requestId" is set to a proper value
    # The received callback must be compliant and should carry the expected values
    And within a limited period of time I should receive a callback at "/components/schemas/NotificationSink/sink"
    And the callback body is compliant with the OAS schema at "/components/callbacks/onCarbonFootprintCalculation" with "x-correlator" having the same value as the request header "x-correlator"
    And the callback carries the information defined in "/components/schemas/CloudEventCarbonFootprint"
    And "/components/schemas/CloudEventCarbonFootprint" in the callback should contain the parameter "$.requestId" with the same value as in the 201 response of "/calculate-carbon-footprint"
    And "/components/schemas/CloudEventCarbonFootprint" in the callback should contain the parameter"$.carbonFootprint" set to the expected value

  @calculate-energy-consumption_02_more_instances
  Scenario: multiple instance ids are provided
    Given the request body property "$.service" carries an array of valid "$.AppInstanceId"
    And "$.notificationSink" is set to a proper value
    And the request body is set to a valid request body
    When the HTTP "POST" request is sent
    Then the response status code is 201
    And the response header "Content-Type" is "application/json"
    And the response header "x-correlator" has same value as the request header "x-correlator"
    # The response has to comply with the generic response schema which is part of the spec
    And the response body complies with the OAS schema at "/components/schemas/ReportCreationRequest"
    And "$.requestId" is set to a proper value
    # The received callback must be compliant and should carry the expected values
    And within a limited period of time I should receive a callback at "/components/schemas/NotificationSink/sink"
    And the callback body is compliant with the OAS schema at "/components/callbacks/onCarbonFootprintCalculation" with "x-correlator" having the same value as the request header "x-correlator"
    And the callback carries the information defined in "/components/schemas/CloudEventCarbonFootprint"
    And "/components/schemas/CloudEventCarbonFootprint" in the callback should contain the parameter "$.requestId" with the same value as in the 201 response of "/calculate-carbon-footprint"
    And "/components/schemas/CloudEventCarbonFootprint" in the callback should contain the parameter"$.carbonFootprint"
    And the parameter"$.carbonFootprint" should be se to the expected value as sum of the carbon footprint of all the application instances