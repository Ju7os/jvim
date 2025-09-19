{ pkgs, ... }:
{
  plugins = {
    dap = {
      enable = true;
      signs = {
        dapBreakpoint = {
          text = "B";
          texthl = "DapBreakpoint";
        };
        dapBreakpointCondition = {
          text = "B";
          texthl = "DapBreakpointCondition";      
        };
        dapLogPoint = {
          text = "L";
          texthl = "DapLogPoint";
        };
      };
    };
    dap-python = {
      enable = true;
    };
    dap-lldb = {
      enable = true;
      settings = {
        codelldb_path = "${pkgs.lldb}/bin/lldb-dap";
      };
    };
    dap-ui = {
      enable = true;
      settings = {
        floating.mappings = {
          close = ["<ESC>" "q"];
        };
      };
    };
    dap-virtual-text = {
      enable = true;
    };
  }; 
  keymaps = [
    { mode = "n"; key = "<leader>db"; action = "<cmd>:DapToggleBreakpoint<CR>"; options.desc = "Dap toggle breakpoint";}
    { mode = "n"; key = "<leader>dc"; action = "<cmd>:DapContinue<CR>"; options.desc = "Dap continue";}
    { mode = "n"; key = "<leader>dn"; action = "<cmd>:DapNew<CR>"; options.desc = "Dap new";}
    { mode = "n"; key = "<leader>dt"; action = "<cmd>:DapTerminate<CR>"; options.desc = "Dap terminate";}
  ];
}
