{
  plugins.nvim-tree = {
    enable = true;
    settings = {
      actions = {
        open_file.quit_on_open = true;
      };
      view = {
        width = 50;
      };
      renderer = {
        group_empty = true;
      };
      sort.sorter = "extension";
      git = {
        enable = true;
        show_on_dirs = false;
      };
    };
  };
  plugins.web-devicons.enable = true;

  keymaps = [
        { mode = "n"; key = "<leader>e"; action = "<cmd>NvimTreeToggle<CR>"; options.desc = "Toggle NvimTree";}
  ];
}
