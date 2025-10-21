{pkgs, lib, ...}:
{
  config.vim = {

    globals = {
      mapleader = " ";
    };
    clipboard = {
      enable = true;
      providers.wl-copy.enable = true;
      registers = "unnamedplus";
    };
    options = {
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
    diagnostics.config = {
      underline = true;
      signs = lib.generators.mkLuaInline /*Lua*/ ''{
        text = {
            [vim.diagnostic.severity.ERROR] = '󰅚 ',
            [vim.diagnostic.severity.WARN] = '󰀪 ',
            [vim.diagnostic.severity.HINT] = '󰌶 ',
            [vim.diagnostic.severity.INFO] = ' '
        },
        linehl = {
            [vim.diagnostic.severity.ERROR] = 'DiagnosticSignError',
            [vim.diagnostic.severity.WARN] = 'DiagnosticSignWarn',
            [vim.diagnostic.severity.HINT] = 'DiagnosticSignHint',
            [vim.diagnostic.severity.INFO] = 'DiagnosticSignInfo'
        },
        numhl = {
            [vim.diagnostic.severity.ERROR] = 'DiagnosticSignError',
            [vim.diagnostic.severity.WARN] = 'DiagnosticSignWarn',
            [vim.diagnostic.severity.HINT] = 'DiagnosticSignHint',
            [vim.diagnostic.severity.INFO] = 'DiagnosticSignInfo'
        }
      }'';
    };
    extraPackages = [
      pkgs.gcc
      pkgs.tree-sitter
      pkgs.nodejs-slim
      pkgs.ripgrep
      pkgs.fd
    ];
  };
}
