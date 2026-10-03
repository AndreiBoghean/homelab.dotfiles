{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # lolcat
    cowsay
  ];
}
