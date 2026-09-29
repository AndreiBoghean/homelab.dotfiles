{
  description = "Isolated Homelab Configurations Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";
  };

  outputs = { self, nixpkgs, ... }: {
    nixosModules.homelab = { pkgs, lib, ... }: {
      import ./kubernetes.flake;
      import ./testFile.flake;
    };
  };
}
