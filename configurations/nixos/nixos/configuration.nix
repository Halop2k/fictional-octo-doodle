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
  boot.kernelParams = [
    "video=3840x2140@120"
  ];

  hardware.graphics = {
    ## radv: an open-source Vulkan driver from freedesktop
    enable32Bit = true;

    ## amdvlk: an open-source Vulkan driver from AMD
    #extraPackages = [ pkgs.amdvlk ];
    #extraPackages32 = [ pkgs.driversi686Linux.amdvlk ];
  };

  hardware.spacenavd.enable = true;

  system.stateVersion = "25.11";
}
