{
  programs.nixvim = {
    imports = [
      ./colorscheme.nix
      ./plugins.nix
      ./globals.nix
      ./lsp.nix
    ];
  };
}
