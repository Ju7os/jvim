{pkgs, ...}:
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
  diagnostic.settings = {
    underline = true;
    float.border = [ "╭" "┈" "╮" "│" "╯" "┈" "╰" "│" ];
    signs = {
      text = {
        "__rawKey__vim.diagnostic.severity.ERROR" = "󰅚 ";
        "__rawKey__vim.diagnostic.severity.WARN"  = "󰀪 ";
        "__rawKey__vim.diagnostic.severity.HINT"  = "󰌶 ";
        "__rawKey__vim.diagnostic.severity.INFO"  = " ";
      };
      texthl = {
        "__rawKey__vim.diagnostic.severity.ERROR" = "DiagnosticSignError"; 
        "__rawKey__vim.diagnostic.severity.WARN"  = "DiagnosticSignWarn";
        "__rawKey__vim.diagnostic.severity.HINT"  = "DiagnosticSignHint";
        "__rawKey__vim.diagnostic.severity.INFO"  = "DiagnosticSignInfo";
      };
      numhl = {
        "__rawKey__vim.diagnostic.severity.ERROR" = "DiagnosticSignError";
        "__rawKey__vim.diagnostic.severity.WARN"  = "DiagnosticSignWarn";
        "__rawKey__vim.diagnostic.severity.HINT"  = "DiagnosticSignHint";
        "__rawKey__vim.diagnostic.severity.INFO"  = "DiagnosticSignInfo";
      };
    };
  };
  extraPackages = [
    pkgs.gcc
    pkgs.tree-sitter
  ];
  plugins.nvim-autopairs.enable = true;
}
