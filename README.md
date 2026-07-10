# Installation

```bash
curl -fsSL https://github.com/Penterep/deb-pentereptools/raw/main/scripts/install.sh | sudo sh
```

## Development

### Build

Update the `Version` field in `package-root/DEBIAN/control`, then run:

```bash
version=$(sed -n 's/^Version: //p' package-root/DEBIAN/control) && dpkg-deb --build --root-owner-group package-root "penterep-tools_${version}_all.deb"
```

### Deprecated code

`LEGACY_0_2_MIGRATION` is the currently documented deprecated code. It supports
direct upgrades from version 0.2 and may be removed once versions older than
0.3 are no longer supported:

```bash
grep -RIn 'LEGACY_0_2_MIGRATION' package-root
```

Review the marked sections together and retest installation, upgrade, removal,
and purge after deleting them.
