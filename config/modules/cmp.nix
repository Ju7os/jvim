{lib, ...}:
{
  config.vim = {
    snippets.luasnip = {
      enable = true;
      providers = [
        "friendly-snippets"
      ];
    }; 
    autocomplete.nvim-cmp = {
      enable = true;
      sourcePlugins = [
        "luasnip"
        "cmp-nvim-lsp"
        "cmp-path"
        "cmp-treesitter"
        "cmp-luasnip"
      ];
      sources = {
        nvim_lsp = lib.mkForce " ";
        treesitter = lib.mkForce " ";
        luasnip = lib.mkForce "";
        path = "./";
      };
      mappings = {
        confirm = "<CR>";
        close = "<C-e>";
        previous = "<S-tab>";
        next = "<tab>";
        scrollDocsDown = "<C-j>";
        scrollDocsUp = "<C-k>";
        complete = "<C-space>";
      };
      setupOpts = {
        completion.completeopt = "menu,abbr,kind";
      };
    };
    ui.borders.plugins.nvim-cmp = {
       enable = true;
       style = "rounded";
    };
  };

}
