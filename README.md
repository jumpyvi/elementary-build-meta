# ElementaryOS 26.04 (fSDK)

ElementaryOS, but based on [Freedesktop SDK](https://gitlab.com/freedesktop-sdk/freedesktop-sdk) instead of Ubuntu.


## What?

This is a distribution that builds its own components in a manner that is both far closer to the source, and is 100% reproducible.

It can be compared most accurately to [Gnome OS](https://os.gnome.org), which is our biggest inspiration for this project. We use the same build system as Gnome OS, and we even use components **from** Gnome OS!


## How to?

### Build a single element

For exemple, to build `gala`

`just bst build desktop/gala.bst`

or `switchboard`

`just bst build desktop/settings/switchboard.bst`

### Build elementaryOS (meta)

> Will take arround 3 hours, and 90gb of download

`just build`

## Progress

- [x] Granite 6 (Legacy)
- [x] Granite 7
- [x] Granite 9
- [x] Gala
- [x] Icons
- [x] Stylesheet
- [x] Wallpapers
- [x] Notifications
- [x] Wingpanel
  - [x] apps-menu
  - [ ] panel-bluetooth
  - [x] panel-datetime
  - [x] panel-network
  - [ ] panel-nightlight
  - [x] panel-notifications
  - [x] panel-power
  - [x] panel-sound
  - [x] quick-settings
- [ ] AppCenter
- [x] Dock
- [ ] Settings (switchboard)
  - [x] Settings-daemon
  - [x] System-settings
  - [x] Portals
- [x] EOS Greeter
- [X] LightDM
- [x] Kernel
- [ ] PolkitAgent
- [ ] Onboarding
- [ ] Shortcut Overlay
- [ ] Apps
  - [x] Terminal
  - [x] Files
  - [ ] Code
  - [ ] Monitor

(And probably a bunch more)


# Thank you

- Thanks to [Zirconium Hawaii](https://github.com/zirconium-dev/zirconium-hawaii) for providing the base repo.
