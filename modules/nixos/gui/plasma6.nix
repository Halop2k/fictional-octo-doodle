{ pkgs, ... }:
{
  services = {
    displayManager.sddm.enable = true;
    desktopManager.plasma6.enable = true;
  };

  environment.systemPackages = with pkgs; [
    vesktop
    element-desktop
    steam
  ];
}
