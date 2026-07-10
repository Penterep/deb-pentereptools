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
- Removed launchers and application menu entries when tools are uninstalled.

### Changed

- Launchers are now generated in `/usr/bin`.
- Legacy launchers in `/usr/local/bin` are removed and regenerated.
- Package helper files were moved to standard system locations.
- The `register-tools` helper was moved from `/usr/bin` to
  `/usr/lib/penterep-tools`.
- Added a bootstrap installation script and simplified installation
  instructions.
- Added a `Penterep Tools` desktop menu with entries for installed tools.

## 0.2

- Initial packaged version.
