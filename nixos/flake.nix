{
  description = "A simple NixOS flake";

  inputs = {
    # NixOS official package source, using the nixos-26.05 branch here
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    # homelab package source, with all the stuff we be installin
    homelab.url = "path:/homelab";
  };
  outputs = { self, nixpkgs, homelab, ... }@inputs: {
    # Please replace my-nixos with your hostname
    nixosConfigurations.nixos-server = nixpkgs.lib.nixosSystem {
      modules = [
        # Import the previous configuration.nix we used,
        # so the old configuration file still takes effect
	./configuration.nix
        homelab.nixosModules.homelab
      ];
    };
  };
}
