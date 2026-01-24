{ pkgs, ... }:
{
  services.xserver = {
    displayManager.sddm.enable = true;
    desktopManager.plasma6.enable = true;
  };

#   environment.systemPackages = with pkgs; [
#     pkgs.gnome-tweaks
#   ];
}
