{ flake, pkgs, ... }:
{
  imports = [
    flake.inputs.nixvim.homeModules.nixvim
  ];

  programs.nixvim = import ./nixvim.nix // {
    enable = true;
    extraPlugins = with pkgs.vimPlugins; [
      nvim-notify
      plenary-nvim # https://github.com/nix-community/nixvim/issues/4224
    ];

  };
}
