{
  description = "modules aggregator";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";
  };

  outputs = { self, nixpkgs, ... }: {
    system = "x86_64-linux";
    nixosModules.modules = { pkgs, lib, ... }: {
      imports = [
        ./kubernetes.nix
        ./testFile.nix
      ];


      # environment.systemPackages = with pkgs; [
      #   cowsay
      # ];
      # import ./kubernetes.nix;
      # import ./testFile.nix;
    };
  };
}
