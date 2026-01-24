{ pkgs, ... }:
{
  services = {
    displayManager.sddm.enable = true;
    desktopManager.plasma6.enable = true;
  };

  environment.systemPackages = with pkgs; [
    pkgs.kdePackages.kate
    pkgs.vesktop
    pkgs.element-desktop
  ];
}
