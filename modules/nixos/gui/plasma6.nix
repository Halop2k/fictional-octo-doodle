{ pkgs, lib, ... }:
{

  services = {
    displayManager.sddm.enable = true;
    desktopManager.plasma6.enable = true;
#    niri = {
#      enable = true;
#      # config = import ./niri-config.nix { inherit (flake.inputs) self; };
#      settings = {
#        includes = lib.mkAfter [
#          ./config.kdl
#        ];
#      };
#    };
  };

  environment.systemPackages = with pkgs; [
    vesktop
    element-desktop
    steam
    rofi
    kitty
    nix-output-monitor
    gamescope
  ];
}
