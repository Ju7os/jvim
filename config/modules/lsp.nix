{
  plugins.lsp = {
    enable = true;
    servers = {
      bashls.enable = true;
      clangd.enable = true;
      rust_analyzer = {
        enable = true;
        installRustc = false;
        installCargo = false;
        installRustfmt = false;
      };
      pyright.enable = true;
      ltex = {
        enable = true;
        filetypes = ["typst" "bib" "gitcommit" "markdown" "org" "plaintex" "rst" "rnoweb" "tex" "pandoc"];
        settings = {
          language = "fr";
        };         
      };
      glsl_analyzer.enable = true;
      lua_ls.enable = true;
      nil_ls = {
        enable = true;
        settings = {
          autoArchive = true;
        };
      };
    };
  };
  plugins.ltex-extra = {
    enable = true;
    settings = {
      initCheck = true;
      loadLangs = [
        "en-US"
        "fr"
      ];
      logLevel = "none";
      path = ".ltex";
    };
  };

  keymaps = [
    { mode = "n"; key = "K"; action = "<cmd>lua vim.lsp.buf.hover()<CR>"; options.desc = "Hover help";}
    { mode = "n"; key = "<leader>gd"; action = "<cmd>lua vim.lsp.buf.definition()<CR>"; options.desc = "Go to definition";}
    { mode = "n"; key = "<leader>gD"; action = "<cmd>lua vim.lsp.buf.declaration()<CR>"; options.desc = "Go to declaration";}
    { mode = "n"; key = "<leader>gi"; action = "<cmd>lua vim.lsp.buf.implementation()<CR>"; options.desc = "Go to implementation";}
    { mode = "n"; key = "<leader>gt"; action = "<cmd>lua vim.lsp.buf.type_definition()<CR>"; options.desc = "Go to type definition";}
    { mode = "n"; key = "<leader>gr"; action = "<cmd>lua vim.lsp.buf.reference()<CR>"; options.desc = "Go to reference";}
    { mode = "n"; key = "<leader>gs"; action = "<cmd>lua vim.lsp.buf.signature_help()<CR>"; options.desc = "Lsp signature_help";}
    { mode = "n"; key = "<leader>ra"; action = "<cmd>lua vim.lsp.buf.rename()<CR>"; options.desc = "Lsp rename";}
    { mode = "n"; key = "<leader>ca"; action = "<cmd>lua vim.lsp.buf.code_action()<CR>"; options.desc = "Lsp code actions";}
    { mode = "n"; key = "<leader>fm"; action = "<cmd>Format<CR>"; options.desc = "Conform Format";}
    { mode = "n"; key = "[d"; action = "<cmd>lua vim.diagnostic.goto_prev()<CR>"; options.desc = "Go to prev diagnostics";}
    { mode = "n"; key = "]d"; action = "<cmd>lua vim.diagnostic.goto_next()<CR>"; options.desc = "Go to next diagnostics";}
    { mode = "n"; key = "<leader>lf"; action = "<cmd>lua vim.diagnostic.open_float()<CR>"; options.desc = "Open floating diagnostics";}
  ];
}
