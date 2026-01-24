{ ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  users.users.halop = {
    isNormalUser = true;
    description = "Halop";
    extraGroups = [ "networkmanager" "wheel" ];
  };

  system.stateVersion = "25.11";
}
