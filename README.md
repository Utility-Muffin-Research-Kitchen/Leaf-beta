# Leaf Beta

> [!WARNING]
> **This is a beta test channel, not a public release.**
> Builds here are provided for testers only. They may be unstable, incomplete, or
> change without notice. Do not run them as your everyday setup, and please do not
> redistribute them. For a stable, supported version, install the latest release
> from the main Leaf repo:
> <https://github.com/Utility-Muffin-Research-Kitchen/Leaf/releases/latest>

Beta tester builds of
[Leaf](https://github.com/Utility-Muffin-Research-Kitchen/Leaf), the custom
firmware for the Miniloong Pocket 1, published early so testers can try new
features and report problems before they reach a stable release.

## Who this is for

Testers who are comfortable reinstalling firmware and reporting bugs. If that is not
you, use a [stable release](https://github.com/Utility-Muffin-Research-Kitchen/Leaf/releases/latest)
instead.

## Versioning

Beta builds use tags `vX.Y.Z-beta.N` (for example `v0.5.0-beta.1`), where
`X.Y.Z` is the stable release they are working toward. The full
`X.Y.Z-beta.N` remains visible on-device, while compatibility checks use the
`X.Y.Z` core.

Builds here are published as regular GitHub releases—not GitHub
**Pre-releases**—because Leaf's updater skips prerelease-flagged releases. The
newest beta is **Latest** within this dedicated tester repository; it is not a
stable Leaf release. The device's update-channel setting selects the stable or
beta repository.

## Installing

Beta builds support both fresh installs and over-the-air updates. For a fresh
install, download the SD zip from a release below and follow the standard
install steps: <https://leaf.game/guide/install/>. On an existing compatible
Leaf installation, open **System Update**, set **Update Channel** to **Beta**,
then check for and install the update.

## Reporting issues

Please report anything you find, with the exact beta tag you are on, in the Leaf
community (Discord) or on the main repo's issue tracker. Bug reports are the whole
point of this channel.
