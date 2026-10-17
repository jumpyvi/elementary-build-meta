kind: stack

depends:
  # Base
  - stacks/common-desktop.bst
  - desktop/dock.bst
  - desktop/gala.bst
  - desktop/lightdm.bst
  - desktop/greeter.bst
  - desktop/portals.bst
  - desktop/notifications-server.bst

  # Panel
  - desktop/panel/wingpanel.bst
  - desktop/panel/applications-menu.bst
  - desktop/panel/panel-power.bst
  - desktop/panel/panel-sound.bst
  - desktop/panel/panel-notifications.bst
  - desktop/panel/quick-settings.bst
  - desktop/panel/panel-notifications.bst

  # Settings
  - desktop/settings/switchboard.bst
  - desktop/settings/settings-daemon.bst
  - desktop/settings/settings-system.bst
  - desktop/settings/session-settings.bst

  # Apps
  - desktop/apps/files.bst
  - desktop/apps/terminal.bst

  # Look
  - desktop/wallpapers.bst
  - desktop/icons.bst
  - desktop/stylesheet.bst
  
