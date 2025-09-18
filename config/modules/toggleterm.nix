{
  plugins.toggleterm = {
    enable = true;
    settings = {
      autochdir = true;
      float_opts = {
        border = "curved";
        winblend = 10;
        width = /*Lua*/ " vim.api.nvim_win_get_width(0) - vim.g.termwidthpadd * 2 ";
        height = /*Lua*/ " vim.api.nvim_win_get_height(0) - vim.g.termheightpadd * 2 ";
        col = /*Lua*/ " vim.g.termwidthpadd ";
        row = /*Lua*/ " vim.g.termheightpadd ";
      };
    };
  };
  keymaps = [
        { mode = "n"; key = "<C-\\>"; action = "<cmd>ToggleTerm direction=float name=terminal<CR>"; options.desc = "Toggle terminal";}
        { mode = "t"; key = "<C-\\>"; action = "<cmd>ToggleTerm direction=float name=terminal<CR>"; options.desc = "Toggle terminal";}
  ];
}
