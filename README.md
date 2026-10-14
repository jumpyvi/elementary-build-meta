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

`just bst build stacks/elementaryos.bst`

`just bst artifact checkout stacks/elementaryos.bst --directory ./rootfs`

## Progress

- [x] Granite (Legacy)
- [x] Granite 7
- [ ] Granite 9
- [x] Gala
- [x] Wingpanel
  - [x] apps-menu
  - [ ] panel-bluethooth
  - [ ] panel-datetime
  - [ ] panel-network
  - [ ] panel-nightlight
  - [ ] panel-notifications
  - [x] panel-power
  - [x] panel-sound
  - [x] quick-settings
- [ ] AppCenter
- [x] Dock
- [ ] Settings (switchboard)
  - [x] Settings-daemon
  - [x] Portals
- [x] EOS Greeter
- [X] LightDM
- [ ] Kernel
- [ ] Apps
  - [x] Terminal
  - [x] Files
  - [ ] Browser
  - [ ] Code

(And probably much more)


# Thank you

- Thanks to [Zirconium Hawaii](https://github.com/zirconium-dev/zirconium-hawaii) for providing the base repo.
