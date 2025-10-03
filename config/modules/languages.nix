{ lib, lspEnable, treesitterEnable, dapEnable, formatEnable, ... }:
{
  config.vim = {
    formatter.conform-nvim = {
      setupOpts = {
        formatters_by_ft = {
          _ = ["trim_whitespace" "trim_newlines"];
        };
      };
    };
    lsp = {
      enable = lib.mkForce lspEnable;
      formatOnSave = formatEnable;
      lspkind.enable = false;
      lightbulb.enable = false;
      lspsaga.enable = false;
      trouble.enable = false;
      otter-nvim.enable = false;
      nvim-docs-view.enable = lspEnable;
    };
    debugger = {
      nvim-dap = {
        enable = dapEnable;
        ui.enable = dapEnable;
      };
    };

    languages = {
      enableExtraDiagnostics = lspEnable;
      enableTreesitter = treesitterEnable;
      enableFormat = formatEnable;

      clang = {
        enable = true;
        lsp.enable = lspEnable;
        dap.enable = dapEnable;
      };
      nix = {
        enable = true;
        lsp.enable = lspEnable;
      };
      python = {
        enable = true;
        lsp.enable = lspEnable;
        dap.enable = dapEnable;
      };
      rust = {
        enable = true;
        lsp.enable = lspEnable;
        dap.enable = dapEnable;
      };
      bash = {
        enable = true;
        lsp.enable = lspEnable;
      };
      typst = {
        enable = true;
        lsp.enable = lspEnable;
      };
      lua = {
        enable = true;
        lsp.enable = lspEnable;
      };
      markdown = {
        enable = true;
      };
    };
  };
}
