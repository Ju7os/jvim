{
  config.vim.telescope = {
    enable = true;
    setupOpts = {
      defaults = {
        file_ignore_patterns = [
          "^.git/"
          "^.mypy_cache/"
          "^__pycache__/"
          "^output/"
          "^data/"
          "%.ipynb"
        ];
        layout_config = {
          horizontal.prompt_position = "bottom";
        };
        selection_caret = " ";
        prompt_prefix =" ";

        set_env = {
          COLORTERM = "truecolor";
        };
        sorting_strategy = "ascending";
      };
    };
    mappings = {
      findFiles = "<leader>ff"; 
      liveGrep = "<leader>fg"; 
      buffers = "<leader>fb"; 
      helpTags = "<leader>fh"; 
    };
  };
}
