
# Changelog CAMARA EnergyFootprintNotification

## Table of Contents

- **[r1.2](#r12)**
- **[r1.1](#r11)**

**Please be aware that the project will have frequent updates to the main branch. There are no compatibility guarantees associated with code in any branch, including main, until it has been released. For example, changes may be reverted before a release is published. For the best results, use the latest published release.**

The below sections record the changes for each API version in each release as follows:

* for an alpha release, the delta with respect to the previous release
* for the first release-candidate, all changes since the last public release
* for subsequent release-candidate(s), only the delta to the previous release-candidate
* for a public release, the consolidated changes since the previous public release

# r1.2

## Release Notes

This release contains the definition and documentation of:
* energy-footprint-notification v0.1.0-rc.1

The API definition(s) are based on
* Commonalities v0.6.0-rc.1
* Identity and Consent Management v0.4.0-rc.1

## energy-footprint-notification v0.1.0-rc.1
This is the first release candidate of the CAMARA EnergyFootprintNotification API supporting the retrival of energy consumption information and carbon footprint for a Service running over some application instances tupically edge located.

- API definition **with inline documentation**:
  - OpenAPI [YAML spec file](https://github.com/camaraproject/EnergyFootprintNotification/blob/r1.2/code/API_definitions/energy-footprint-notification.yaml)
  - [View it on ReDoc](https://redocly.github.io/redoc/?url=https://raw.githubusercontent.com/camaraproject/EnergyFootprintNotification/r1.2/code/API_definitions/energy-footprint-notification.yaml&nocors)
  - [View it on Swagger Editor](https://camaraproject.github.io/swagger-ui/?url=https://raw.githubusercontent.com/camaraproject/EnergyFootprintNotification/r1.2/code/API_definitions/energy-footprint-notification.yaml)

### Added

### Changed

* Renamed operations: https://github.com/camaraproject/EnergyFootprintNotification/pull/83 
* Changed OAuth2 with OpenId: https://github.com/camaraproject/EnergyFootprintNotification/pull/83

### Fixed

### Removed

**Full Changelog**: https://github.com/camaraproject/EnergyFootprintNotification/commits/r1.1...r1.2

# r1.1

## Release Notes

This release contains the definition and documentation of:
* energy-footprint-notification v0.1.0-alpha.1

The API definition(s) are based on
* Commonalities v0.6.0-alpha.1
* Identity and Consent Management v0.4.0-alpha.1

## energy-footprint-notification v0.1.0-alpha.1
This is the first pre-release of the CAMARA EnergyFootprintNotification API supporting the retrival of energy consumption information and carbon footprint for a Service running over some application instances tupically edge located.

- API definition **with inline documentation**:
  - OpenAPI [YAML spec file](https://github.com/camaraproject/EnergyFootprintNotification/blob/r1.1/code/API_definitions/energy-footprint-notification.yaml)
  - [View it on ReDoc](https://redocly.github.io/redoc/?url=https://raw.githubusercontent.com/camaraproject/EnergyFootprintNotification/r1.1/code/API_definitions/energy-footprint-notification.yaml&nocors)
  - [View it on Swagger Editor](https://camaraproject.github.io/swagger-ui/?url=https://raw.githubusercontent.com/camaraproject/EnergyFootprintNotification/r1.1/code/API_definitions/energy-footprint-notification.yaml)

## Please note:

- This pre-release contains a release-candidate API version, there are bug fixes to be expected and incompatible changes in upcoming versions 
- The release is suitable for implementers, but it is not recommended to use the API with customers in productive environments
- The release scope is defined here: https://github.com/camaraproject/EnergyFootprintNotification/issues/50

## What's New

* Support for the following use cases: https://github.com/camaraproject/EnergyFootprintNotification/discussions/11

## New Contributors
* @FabrizioMoggio

**Full Changelog**: https://github.com/camaraproject/EnergyFootprintNotification/commits/r1.1
