{ pkgs, config, lib, ... }:
{
  programs.go.enable = true;
  programs.bat.enable = true;
  programs.fzf = {
    enable = true;
    enableBashIntegration = true;
  };
  programs.k9s.enable = true;
  programs.oh-my-posh = {
    enable = true;
    enableBashIntegration = true;
  };
  programs.thefuck = {
    enable = true;
    enableBashIntegration = true;
  };
  


programs.vscode = {
  enable = true;
  };
}
