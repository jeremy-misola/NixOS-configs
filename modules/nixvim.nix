{ config, pkgs, nixvim, ... }:
{

imports = [ 
  nixvim.homeManagerModules.nixvim 
  ./nixvim-config
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
