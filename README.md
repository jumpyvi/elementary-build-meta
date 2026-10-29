<div align="center">
  <a href="https://elementary.io" align="center">
    <center align="center">
<picture>
  <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/elementary/brand/main/logomark-white.png">
  <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/elementary/brand/main/logomark-black.png">
  <img src="https://raw.githubusercontent.com/elementary/brand/main/logomark-black.png" alt="elementary" align="center" height="200">
</picture>
    </center>
  </a>
  <br>
  <h1 align="center"><center>elementary OS</center></h1>
  <h3 align="center"><center>Mkosi configurations for building elementary OS images</center></h3>
  <br>
  <br>
</div>

<p align="center">
  <img src="https://github.com/elementary/os/actions/workflows/daily-8.1.yml/badge.svg" alt="Daily 8.1">
  <img src="https://github.com/elementary/os/actions/workflows/daily-9.0.yml/badge.svg" alt="Daily 9.0">
</p>

---

# Building OS locally

You'll need the following runtime dependencies:
* podman
* just
* zstd
* systemd

Generate keys and then build with `just`

```bash
just genkey
just do-release
```

> Building may take 2h+ and around 90gb

This will result in a bootable .iso. </br>
Test it out in a VM, or create an [USB install drive](https://elementary.io/docs/installation#installation) (>= 8GB)

# Building elements

For exemple, to build gala

`just bst build desktop/gala.bst`

or switchboard

`just bst build desktop/settings/switchboard.bst`


# Further Information

To get started with elementary OS, begin by [learning the basics](https://elementary.io/docs/learning-the-basics#learning-the-basics).

For contributors, administrators and OEMs, check out the [wiki](https://github.com/elementary/os/wiki) for in-depth information.


# Special thanks

- [Zirconium](https://github.com/zirconium-dev/zirconium-hawaii) for providing the repo template
- [FreeDesktopSDK](https://gitlab.com/freedesktop-sdk/freedesktop-sdk) for providing cache for upstream elements
- [GnomeOS](https://gitlab.gnome.org/GNOME/gnome-build-meta) for providing remote elements definitions

