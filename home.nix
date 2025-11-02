{ config, pkgs, ... }:
{


  home.username = "jurassicjey";
  home.homeDirectory = "/home/jurassicjey";
  programs.git.enable = true;
  home.stateVersion = "25.05";
  programs.bash = {
    enable = true;
    shellAliases = {
      btw = "echo i use nixos, btw";
      nrs = "sudo nixos-rebuild switch --flake /home/jurassicjey/nixos-config";
    };
  };
}

