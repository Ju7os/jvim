{
  config.vim.statusline.lualine = {
    enable = true;
    theme = "auto";
    disabledFiletypes.statusline = ["NvimTree"];
    activeSection = {
      a = [
        ''
          {
          "mode",
          separator = {right = ''};
          }
        ''
      ];
      b = [
        ''
          {
          "branch",
          "diff",
           separator = {right = '', left = ''}
          }
        ''
      ];
      c = [
        ''          { "filename";
                    path = 3; 
                    symbols = {
                      modified = " ";
                      readonly = "󰌾 ";
                      unnamed = ""; 
                      newfile = " ";
                    };
                  }''
      ];
      y = [
        ''
          {
          "encoding",
          separator = {left = ''}
          }
        ''
        ''
          {
          "fileformat",
          separator = {right = '', left = ''}
          }
        ''
        ''
          {
          "filetype",
          separator = {right = ''}
          }
        ''
      ];
      z = [''{"progress"}''];
    };
  };
}
