{ pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  users.users.halop = {
    isNormalUser = true;
    description = "Halop";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      kdePackages.kate
      vesktop
      element-desktop
    ];
  };

  system.stateVersion = "25.11";
}
