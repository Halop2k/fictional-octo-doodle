# fictional-octo-doodle

NixOS + macOS (nix-darwin) system configuration using nixos-unified, home-manager, and flakes. Includes Neovim, Starship prompt, and a `just` task runner.

## Structure

- `configurations/` – host definitions
- `modules/` – reusable NixOS, home-manager, and flake modules
- `justfile` – common commands
- `flake.nix` – flake entrypoint

## Quick Start

```bash
git clone https://github.com/Halop2k/fictional-octo-doodle.git
cd fictional-octo-doodle
nix run nixos-rebuild -- switch --flake .#your-hostname   # NixOS
# or for macOS:
nix run nix-darwin -- switch --flake .#your-hostname
