{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    obsidian
    tailscale
    resources
    curtail
    git
    neovim
    firefox
    
  # dev 
    go
    nodejs
    python3
    jq
        
    # util
    tmux
    ripgrep
    zip
    unzip
    ftop
    fastfetch
    
    # ide
    jetbrains-toolbox
    vscodium
  ];
  services.tailscale.enable = true;
}

