{
  config.vim = {
    maps.command = {
      W = { action = "w";};
      Q = { action = "q";};
      Wa = { action = "wa";};
      Wq = { action = "wq";};
      Wqa = { action = "WriteQuitAll";};
      Format = {
        action = 
          ''              
          function(args)
            local range = nil
            if args.count ~= -1 then
              local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
              range = {
                start = { args.line1, 0 },
                ["end"] = { args.line2, end_line:len() },
              }
            end
            require("conform").format({ async = false, lsp_format = "fallback", timeout = 500, range = range })
          end
          '';
        lua = true;
      };
      WriteQuitAll = {
        action = 
          ''
      function() 
        for _, buf in ipairs(vim.api.nvim_list_bufs()) do
          if vim.bo[buf].buftype == "terminal" then
            vim.api.nvim_buf_delete(buf, {force = true})
          end
        end
        vim.cmd("w | qa")
      end
      '';
      };
    };
    extraLuaFiles = [
      (builtins.path {
        path = ./lua/lua-remaps.lua;
        name = "lua-remaps.lua";
      })
    ];
  };
  
}
