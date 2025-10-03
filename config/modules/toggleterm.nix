{
  config.vim = {
    globals = {
      termwidthpadd = 10;
      termheightpadd = 5;
    };
    terminal.toggleterm = {
      enable = true;
      setupOpts = {
        autochdir = true;
        float_opts = {
          border = "curved";
          winblend = 10;
        };
      };
    };
    keymaps = [
          { mode = "n"; key = "<C-\\>"; action = "<cmd>ToggleTerm direction=float name=terminal<CR>"; desc = "Toggle terminal";}
          { mode = "n"; key = "<C-£>"; action = "<cmd>ToggleTerm direction=float name=terminal<CR>"; desc = "Toggle terminal";}
          { mode = "t"; key = "<C-\\>"; action = "<cmd>ToggleTerm direction=float name=terminal<CR>"; desc = "Toggle terminal";}
          { mode = "t"; key = "<C-£>"; action = "<cmd>ToggleTerm direction=float name=terminal<CR>"; desc = "Toggle terminal";}
    ];
  };
}
