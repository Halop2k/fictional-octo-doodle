{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.halop = {
    isNormalUser = true;
    description = "Halop";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      kdePackages.kate
      vesktop
      element-desktop
    #  thunderbird
    ];
  };

  system.stateVersion = "25.11";
}
