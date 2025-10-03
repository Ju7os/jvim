{
  config.vim.keymaps = [
    #-[ NORMAL ]--------------------------------------------------------------------------------------------
    {
      mode = "n";
      key = "<ESC>";
      action = "<cmd>noh<CR>";
      desc = "Disable highlighting on escape";
    }
    {
      mode = "n";
      key = "q";
      action = "<cmd>noh<CR>";
      desc = "Disable highlighting on q";
    }
    {
      mode = "n";
      key = "<C-h>";
      action = "<C-w>h";
      desc = "Move focus right";
    }
    {
      mode = "n";
      key = "<C-l>";
      action = "<C-w>l";
      desc = "Move focus left";
    }
    {
      mode = "n";
      key = "<C-j>";
      action = "<C-w>j";
      desc = "Move focus down";
    }
    {
      mode = "n";
      key = "<C-k>";
      action = "<C-w>k";
      desc = "Move focus up";
    }
    {
      mode = "n";
      key = "<A-j>";
      action = "<cmd>m .+1<CR>==";
      desc = "Slide line down";
    }
    {
      mode = "n";
      key = "<A-k>";
      action = "<cmd>m .-2<CR>==";
      desc = "Slide line up";
    }
    {
      mode = "n";
      key = "<C-u>";
      action = "<C-u>zz";
      desc = "Scroll up & center";
    }
    {
      mode = "n";
      key = "<C-d>";
      action = "<C-d>zz";
      desc = "Scroll down & center";
    }
    {
      mode = "n";
      key = "<leader>x";
      action = "<cmd>bd<CR>";
      desc = "Close buffer";
    }
    {
      mode = "n";
      key = "<leader>/";
      action = "<cmd>normal gcc<CR>";
      desc = "Comment line";
    }

    #-[ INSERT ]--------------------------------------------------------------------------------------------
    {
      mode = "i";
      key = "jk";
      action = "<ESC>";
      desc = "Quick normal mode";
    }
    {
      mode = "i";
      key = "<A-j>";
      action = "<cmd>m .+1<CR>";
      desc = "Slide line down";
    }
    {
      mode = "i";
      key = "<A-k>";
      action = "<cmd>m .-2<CR>";
      desc = "Slide line up";
    }

    #-[ VISUAL & SELECT ]-----------------------------------------------------------------------------------
    {
      mode = "v";
      key = "<A-j>";
      action = ":m '>+1<CR>gv=gv";
      desc = "Slide line down";
    }
    {
      mode = "v";
      key = "<A-k>";
      action = ":m '<-2<CR>gv=gv";
      desc = "Slide line up";
    }

    {
      mode = "v";
      key = "<";
      action = "<gv";
      desc = "Indent left";
    }
    {
      mode = "v";
      key = ">";
      action = ">gv";
      desc = "Indent right";
    }

    {
      mode = "v";
      key = "<leader>/";
      action = "<cmd>normal gcc<CR>";
      desc = "Comment selection";
    }
    {
      mode = "v";
      key = "q";
      action = "<ESC>";
      desc = "Exit visual mode";
    }
  ];
}
