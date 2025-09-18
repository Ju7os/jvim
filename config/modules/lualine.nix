{
  plugins.lualine = {
    enable = true;
    settings = {
      options = {
        theme = "auto";
        disabled_filetypes = ["NvimTree"];
      };
      sections = {
        lualine_a = [ "mode" ];
        lualine_b = [ "branch" "diff"];
        lualine_c = [ { __unkeyed-1 = "filename";
            path = 3; 
            symbols = {
              modified = " ";
              readonly = "󰌾 ";
              unnamed = ""; 
              newfile = " ";
            };
          }
        ];
        lualine_x = [ "diagnostics" 
        {
          __unkeyed-1 = {
            __raw = ''
            function()
              local msg = ""
              local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
              local clients = vim.lsp.get_clients()
              if next(clients) == nil then
                return msg
              end
              for _, client in ipairs(clients) do
                local filetypes = client.config.filetypes
                if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                  return client.name
                end
              end
              return msg
            end
            '';
          };
          color = {
            fg = "#ffffff";
          };
          icon = " ";
        } 
        ];
        lualine_y = [ "encoding" "fileformat" "filetype" ];
        lualine_z = [ "progress" "location"];
      };
    };
  };
}
