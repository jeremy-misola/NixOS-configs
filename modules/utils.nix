{ config, pkgs, lib, ...}:

{
  home.packages = with pkgs; [
    bat
    tmux
    jq
    ripgrep
  ];


}
