# stacks/pantheon.bst
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
  - desktop/initial-setup.bst

  # Panel
  - desktop/panel/wingpanel.bst
  - desktop/panel/applications-menu.bst
  - desktop/panel/panel-power.bst
  - desktop/panel/panel-sound.bst
 # - desktop/panel/panel-datetime.bst
  - desktop/panel/panel-network.bst
  - desktop/panel/panel-notifications.bst
  - desktop/panel/quick-settings.bst

  # Settings
  - desktop/settings/switchboard.bst
  - desktop/settings/settings-daemon.bst
  - desktop/settings/settings-system.bst
  - desktop/settings/session-settings.bst
  - desktop/settings/default-settings.bst
  - desktop/settings/desktop-settings.bst
  - desktop/settings/settings-sound.bst
  - desktop/settings/settings-network.bst
  - desktop/settings/settings-notifications.bst

  # Apps
  - desktop/apps/files.bst
  - desktop/apps/terminal.bst
  - desktop/apps/onboarding.bst

  # Look
  - desktop/wallpapers.bst
  - desktop/icons.bst
  - desktop/stylesheet.bst

  # Commons
  - deps/granite-9.bst
  
