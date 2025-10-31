{ config, pkgs, ...}:

{
  imports = [
   ];
    
  # The User and Path it manages
  home.username = "jurassicjey";
  home.homeDirectory = "/home/jurassicjey";
  
  programs.home-manager.enable = true;
  
  home.packages = with pkgs; [
    zsh
  ];
  
  # ZSH
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableAutosuggestions = true
    shellAliases = {
      _ = "sudo";
      h = "history";
      hg = "history | grep ";
    };
  };
  
}
