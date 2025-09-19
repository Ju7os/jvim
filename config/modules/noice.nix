{
  plugins = {
    notify.enable = true;
    noice = {
      enable = true;
      settings = {
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
  };
}
