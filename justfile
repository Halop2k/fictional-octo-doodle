# Like GNU `make`, but `just` rustier.
# https://just.systems/
# run `just` from this directory to see available commands

# Default command when 'just' is run without arguments
default:
  @just --list

# Update nix flake
[group('Main')]
update:
  nix flake update

# Lint nix files
[group('dev')]
lint:
  nix fmt

# Check nix flake
[group('dev')]
check:
  nix flake check

# Manually enter dev shell
[group('dev')]
dev:
  nix develop

# Activate the configuration
[group('Main')]
run:
  nix run |& nom
  nixos-rebuild list-generations

# Convert starship .toml to .json
[group('dev')]
convert:
  nix-shell -p toml-cli.out --run "toml get ./modules/home/starship.toml  . > ./modules/home/starship.json"
