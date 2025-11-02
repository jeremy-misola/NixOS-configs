# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  fonts.packages = with pkgs; [
    nerd-fonts.fira-code
    jetbrains-mono
    nerd-fonts.droid-sans-mono
  ];

  networking.hostName = "nixos"; 

  networking.networkmanager.enable = true;

  time.timeZone = "America/Toronto";

  i18n.defaultLocale = "en_CA.UTF-8";

  services.xserver.enable = true;

  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  
  services.xserver.xkb.extraLayouts = {
    canary = {
      description = "Canary kb layout";
      languages = [ "eng" ];
      symbolsFile = ./canary;
    };
  };

  services.xserver = {
      xkb.layout = "canary";
      xkbVariant = "";
      xkbOptions = "grp:alt_shift_toggle";
  };

  services.printing.enable = true;

  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  users.users.jurassicjey = {
    isNormalUser = true;
    description = "Jeremy";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    ];
  };

  programs.firefox.enable = true;

  nixpkgs.config.allowUnfree = true;

  programs.hyprland.enable = true;

  environment.systemPackages = with pkgs; [
    hyprland
    kitty
    waybar
    wofi
    nwg-look
    home-manager
  ];

   
  nix.settings.experimental-features = [ "nix-command" "flakes" ]; 

   programs.mtr.enable = true;
   programs.gnupg.agent = {
     enable = true;
     enableSSHSupport = true;
   };


  services.openssh.enable = true;

  system.stateVersion = "25.05"; 

}
