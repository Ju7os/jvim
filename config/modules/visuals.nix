{
  config.vim = {
    visuals = {

      nvim-scrollbar.enable = true;
      nvim-web-devicons.enable = true;
      nvim-cursorline.enable = true;
      cinnamon-nvim.enable = true;
      fidget-nvim.enable = true;

      highlight-undo.enable = true;
      indent-blankline.enable = true;
    };
    notify.nvim-notify.enable = true;

    ui = {
      noice = {
        enable = true;
        setupOpts = {
          lsp = {
            progress.enabled = false;
            override = {
              "cmp.entry.get_documentation" = true;
              "vim.lsp.util.convert_input_to_markdown_lines" = true;
              "vim.lsp.util.stylize_markdown" = true;
            };
          };
          presets = {
            bottom_search = false;
            command_palette = false;
            inc_rename = true;
            long_message_to_split = true;
            lsp_doc_border = true;
          };
        };
      };
      borders = {
        enable = true;
        globalStyle = [ "╭" "┈" "╮" "│" "╯" "┈" "╰" "│" ];
        plugins = {
          which-key = {
            enable = true;
            style = "rounded";
          };
        };
      };
    };
  };
}
