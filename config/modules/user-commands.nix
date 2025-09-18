{
  userCommands = {
    W = { command = "w";};
    Q = { command = "q";};
    Wa = { command = "wa";};
    Wq = { command = "wq";};
    Wqa = { command = "WriteQuitAll";};
    Format = {
      command = { __raw = 
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
        '';};
      range = true;
    };
    WriteQuitAll = {
      command = { __raw = '' 
    function() 
      for _, buf in ipairs(vim.api.nvim_list_bufs()) do
        if vim.bo[buf].buftype == "terminal" then
          vim.api.nvim_buf_delete(buf, {force = true})
        end
      end
      vim.cmd("w | qa")
    end
    '';};
    };
  };

  extraConfigLua = /*Lua*/ ''
    vim.deprecate = function() end --mutes deprecation notifications
    vim.cmd([[ cnoreabbrev wqa WriteQuitAll ]])
    vim.cmd([[nnoremap j gj]])
    vim.cmd([[nnoremap k gk]])
    vim.cmd([[nnoremap gj j]])
    vim.cmd([[nnoremap gk k]])
  '';
}
