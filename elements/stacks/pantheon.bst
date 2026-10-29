# stacks/pantheon.bst
kind: stack

depends:
  # Base
  - stacks/common-desktop.bst
  - desktop/dock.bst
  - desktop/gala.bst
  - desktop/lightdm.bst
  - desktop/greeter.bst
  - desktop/notifications-server.bst
  - desktop/initial-setup.bst

  # Panel
  - desktop/panel/panel-meta.bst

  # Settings
  - desktop/settings/settings-meta.bst

  # Apps
  - desktop/apps/files.bst
  - desktop/apps/terminal.bst
  - desktop/apps/onboarding.bst

  # Look
  - desktop/look/wallpapers.bst
  - desktop/look/icons.bst
  - desktop/look/stylesheet.bst
  - desktop/look/inter-font.bst

  # Commons
  - deps/granite-9.bst
  - deps/granite-7.bst
  - desktop/agent-polkit.bst
  
