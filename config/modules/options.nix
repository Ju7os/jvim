{
  globals = {
    mapleader = " ";
    termwidthpadd = 10;
    termheightpadd = 5;
  };
  clipboard = {
    providers.wl-copy.enable = true;
    register = "unnamedplus";
  };
  opts = {
    relativenumber = true;
    number = true;
    numberwidth = 2;
    ruler = false;

    expandtab = true;
    shiftwidth = 2;
    tabstop = 2;
    softtabstop = 2;
    scrolloff = 15;

    ignorecase = true;
    smartcase = true;

    foldmethod = "indent";
    foldnestmax = 1;
    foldlevel = 1;

    cursorline = true;
    termguicolors = true;
    signcolumn = "yes";
    swapfile = false;
  };
}
