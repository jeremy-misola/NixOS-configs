{ config, pkgs, ... }:
{

  imports = [ ];

  programs.kitty = {
    enable = true;
    font = {
      package = pkgs.nerd-fonts.jetbrains-mono;
      name = "jetbrains-mono";
    };
    themeFile = "everforest_dark_hard";
    extraConfig = 
    ''
    cursor_shape block
    cursor_trail 20
    background_blur 30
    '';
  };

}

