{
  plugins.lsp = {
    enable = true;

    servers = {
      rust_analyzer.enable = true; 
      golangci_lint_ls.enable = true;
      nixd.enable = true;
    };
  };

  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings.sources = [
      {
        name = "nvim_lsp";
      }
      {
        name = "path";
      }
      {
      name = "buffer";
      }
    ];
    settings.mapping = {
        "<CR>" = "cmp.mapping.confirm({ select = true })";

      };
   };
}


