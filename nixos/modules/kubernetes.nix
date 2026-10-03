{ pkgs, ... }: {

  networking.firewall.allowedTCPPorts = [
    6443 # k3s API server
    32035 # traefik
  ];

  services.k3s.enable = true;
  services.k3s.role = "server";

  services.k3s.extraFlags = toString [
    # "--debug" # Optionally add additional args to k3s
  ];

  environment.systemPackages = with pkgs; [
    k9s
  ];
}
