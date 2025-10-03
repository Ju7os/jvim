{
  config.vim = {
    visuals.nvim-web-devicons.enable = true;
    filetree.nvimTree = {
      enable = true; 
      openOnSetup = false;
      setupOpts = {
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
        hijack_directories.enable = false;
      };
    }; 
  keymaps = [
        { mode = "n"; key = "<leader>e"; action = "<cmd>NvimTreeToggle<CR>"; desc = "Toggle NvimTree";}
  ];
  };
}
