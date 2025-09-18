{
  plugins.telescope = {
    enable = true;
    settings = {
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
          prompt_position = "bottom";
        };
        selection_caret = " ";
        prompt_prefix =" ";
      
        set_env = {
          COLORTERM = "truecolor";
        };
        sorting_strategy = "ascending";
        mappings = {
          i = {
            "<S-j>" = {
              __raw = "require('telescope.actions').move_selection_next";
            };
            "<S-k>" = {
              __raw = "require('telescope.actions').move_selection_previous";
            };
          };
        };
      };
    };
    keymaps = {
      "<leader>ff" = { mode = "n"; action = "find_files"; options.desc = "Telescope find files";};
      "<leader>fo" = { mode = "n"; action = "oldfiles"; options.desc = "Telescope find old files";};
      "<leader>fg" = { mode = "n"; action = "live_grep"; options.desc = "Telescope live grep";};
      "<leader>fb" = { mode = "n"; action = "buffers"; options.desc = "Telescope buffers";};
      "<leader>fh" = { mode = "n"; action = "help_tags"; options.desc = "Telescope help_tags";};
      "<leader>fw" = { mode = "n"; action = "grep_string"; options.desc = "Telescope grep string";};
    };
  };
}
