{ config, pkgs, lib, ...}:

{
  home.packages = with pkgs; [
    bat
    tmux
    jq
    ripgrep
    zoxide
  ];
  programs.zoxide = {
    enable = true;
    enableBashIntegration = true;
  };
  programs.tmux.enable = true;


}
