{
  keymaps = [
    #-[ NORMAL ]--------------------------------------------------------------------------------------------
    { mode = "n"; key = "<ESC>"; action = "<cmd>noh<CR>"; options.desc = "Disable highlighting on escape";}
    { mode = "n"; key = "q"; action = "<cmd>noh<CR>"; options.desc = "Disable highlighting on q";}
    { mode = "n"; key = "<C-h>"; action = "<C-w>h"; options.desc = "Move focus right";}
    { mode = "n"; key = "<C-l>"; action = "<C-w>l"; options.desc = "Move focus left";}
    { mode = "n"; key = "<C-j>"; action = "<C-w>j"; options.desc = "Move focus down";}
    { mode = "n"; key = "<C-k>"; action = "<C-w>k"; options.desc = "Move focus up";}
    { mode = "n"; key = "<A-j>"; action = "<cmd>m .+1<CR>=="; options.desc = "Slide line down";}
    { mode = "n"; key = "<A-k>"; action = "<cmd>m .-2<CR>=="; options.desc = "Slide line up";}
    { mode = "n"; key = "<C-u>"; action = "<C-u>zz"; options.desc = "Scroll up & center";}
    { mode = "n"; key = "<C-d>"; action = "<C-d>zz"; options.desc = "Scroll down & center";}
    { mode = "n"; key = "<leader>x"; action = "<cmd>bd<CR>"; options.desc = "Close buffer";}
    { mode = "n"; key = "<leader>/"; action = "<cmd>normal gcc<CR>"; options.desc = "Comment line";}

    #-[ INSERT ]--------------------------------------------------------------------------------------------
    { mode = "i"; key = "jk"; action = "<ESC>"; options.desc = "Quick normal mode";}
    { mode = "i"; key = "<A-j>"; action = "<cmd>m .+1<CR>"; options.desc = "Slide line down";}
    { mode = "i"; key = "<A-k>"; action = "<cmd>m .-2<CR>"; options.desc = "Slide line up";}

    #-[ VISUAL & SELECT ]-----------------------------------------------------------------------------------
    { mode = "v"; key = "<A-j>"; action = ":m '>+1<CR>gv=gv"; options.desc = "Slide line down";}
    { mode = "v"; key = "<A-k>"; action = ":m '<-2<CR>gv=gv"; options.desc = "Slide line up";}

    { mode = "v"; key = "<"; action = "<gv"; options.desc = "Indent left";}
    { mode = "v"; key = ">"; action = ">gv"; options.desc = "Indent right";}

    { mode = "v"; key = "<leader>/"; action = "<cmd>normal gcc<CR>"; options.desc = "Comment selection";}
    { mode = "v"; key = "q"; action = "<ESC>"; options.desc = "Exit visual mode";}
  ];
}
