{
  plugins = {
    cmp-treesitter.enable = true;
    lualine.enable = true;
    oil.enable = true;
    telescope = {
      enable = true;
      keymaps = {
        "<C-p>" = {
        action = "git_files";
        options = {
          desc = "Telescope Git Files";
          };
        };
        "<leader>fg" = "live_grep";
        "<leader>ff" = "find_files";
        };
     };
    smear-cursor = {
      enable = true;
    };
  };
}
