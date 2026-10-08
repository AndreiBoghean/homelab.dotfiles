{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    lolcat
    cowsay
    vim
    tmux
    git
    rsync
  ];
}
