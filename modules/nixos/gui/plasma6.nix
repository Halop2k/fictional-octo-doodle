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
    rofi
    kitty
    nix-output-monitor
    gamescope
    protonup-ng
    vlc
    qbittorrent-enhanced
    lact
    appimage-run
  ];

  systemd.packages = with pkgs; [ lact ];
  systemd.services.lactd.wantedBy = ["multi-user.target"];
}
