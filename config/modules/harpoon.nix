{
  plugins.harpoon.enable = true;

  keymaps = [
    { mode = "n"; key = "<C-m>"; action = "<cmd>lua require'harpoon':list():add() <CR>"; options.desc = "Harpoon add buffer";}
    { mode = "n"; key = "<leader>h"; action = "<cmd>lua require'harpoon'.ui:toggle_quick_menu(require'harpoon':list()) <CR>"; options.desc = "Harpoon toggle menu";}
    { mode = "n"; key = "<leader><tab>"; action = "<cmd>lua require'harpoon':list():next()<CR>"; options.desc = "Harpoon move next buffer";}
    { mode = "n"; key = "<leader><S-tab>"; action = "<cmd>lua require'harpoon':list():prev()<CR>"; options.desc = "Harpoon move previous buffer";}
    { mode = "n"; key = "<A-1>"; action = "<cmd>lua require'harpoon':list():select(1)<CR>"; options.desc = "Harpoon move to 1";}
    { mode = "n"; key = "<A-2>"; action = "<cmd>lua require'harpoon':list():select(2)<CR>"; options.desc = "Harpoon move to 2";}
    { mode = "n"; key = "<A-3>"; action = "<cmd>lua require'harpoon':list():select(3)<CR>"; options.desc = "Harpoon move to 3";}
    { mode = "n"; key = "<A-4>"; action = "<cmd>lua require'harpoon':list():select(4)<CR>"; options.desc = "Harpoon move to 4";}
    { mode = "n"; key = "<A-5>"; action = "<cmd>lua require'harpoon':list():select(5)<CR>"; options.desc = "Harpoon move to 5";}
    { mode = "n"; key = "<A-6>"; action = "<cmd>lua require'harpoon':list():select(6)<CR>"; options.desc = "Harpoon move to 6";}
    { mode = "n"; key = "<A-7>"; action = "<cmd>lua require'harpoon':list():select(7)<CR>"; options.desc = "Harpoon move to 7";}
    { mode = "n"; key = "<A-8>"; action = "<cmd>lua require'harpoon':list():select(8)<CR>"; options.desc = "Harpoon move to 8";}
    { mode = "n"; key = "<A-9>"; action = "<cmd>lua require'harpoon':list():select(9)<CR>"; options.desc = "Harpoon move to 9";}
    { mode = "n"; key = "<A-10>"; action = "<cmd>lua require'harpoon':list():select(10)<CR>"; options.desc = "Harpoon move to 10";}
  ];
 }
