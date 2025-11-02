{ config, pkgs, nixvim, ... }:
{

imports = [ 
  nixvim.homeManagerModules.nixvim 
  ./lazyvim-config
];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    globals = {
      mapleader = " ";
    };
  };
}
