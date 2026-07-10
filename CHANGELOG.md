# Changelog

## 0.3

### Fixed

- Fixed `sudo ptmanager` on systems where `/usr/local/bin` is not included in
  the `sudo` secure path.
- Preserved the existing virtual environment and installed tools during
  upgrades from version 0.2.
- Prevented package upgrades from triggering destructive uninstall cleanup.
- Fixed installed tool version detection when `ptmanager` runs from the
  Penterep virtual environment without activating its shell PATH.

### Changed

- Launchers are now generated in `/usr/bin`.
- Legacy launchers in `/usr/local/bin` are removed and regenerated.
- Package helper files were moved to standard system locations.
- Added a bootstrap installation script and simplified installation
  instructions.

## 0.2

- Initial packaged version.
