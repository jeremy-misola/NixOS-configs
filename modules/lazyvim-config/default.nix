{
  programs.nixvim = {
    imports = [
      ./colorscheme.nix
      ./plugins.nix
    ];
  };
}
