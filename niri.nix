{ flake, pkgs, ... }:
{
  imports = [
    # Import the NixOS module from the niri flake
    flake.inputs.niri.nixosModules.niri
  ];

  # Enable niri as a window manager
  services.niri = {
    enable = true;
    
    # Optional: specify the package if you want a specific version
    # package = flake.inputs.niri.packages.${pkgs.system}.niri;
    
    # Optional: enable experimental features
    # experimentalFeatures.enable = true;
    
    # System-level configuration
    config = import ./niri-config.nix { inherit (flake.inputs) self; };
  };

  # DISABLE other desktop managers if using niri exclusively
  # services.xserver.enable = false;
  # services.desktopManager.plasma6.enable = false;
  
  # Wayland session configuration (important!)
  # services.xserver.displayManager.sessionPackages = [
    # This makes niri appear in your display manager
    # (flake.inputs.niri.packages.${pkgs.system}.niri.override {
      # Optional: enable extra features
      # extraFeatures.enable = true;
    # })
  # ];
}
