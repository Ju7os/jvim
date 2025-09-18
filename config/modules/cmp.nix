{lib, ...}:
{
  plugins = {
    cmp = {
      enable = true;
      settings = {
        sources = lib.mkDefault [
          { name = "nvim_lsp"; }
          { name = "luasnip"; }
          { name = "path"; }
          { name = "buffer"; keyword_length = 4; }
        ];
        snippet.expand = #Lua
          ''
    function(args)
      require("luasnip").expand(args.body)
    end
          '';
        mapping = {
          "<CR>" = "cmp.mapping.confirm({select = false})";
          "<C-e>" = "cmp.mapping.close()";
          "<S-tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
          "<tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
          "<C-j>" = "cmp.mapping.scroll_docs(4)";
          "<C-k>" = "cmp.mapping.scroll_docs(-4)";
          "<C-space>" = "cmp.mapping.complete()";
        };
        formatting = {
          fields = [
            "menu"
            "abbr"
            "kind"
          ];
          format = # Lua
            ''
    function(entry, item)
      local menu_icon = lib.mkDefault {
        nvim_lsp = " ",
        luasnip = " ",
        buffer = "󰊄 ",
        path = "./",
      }
      item.menu = menu_icon[entry.source.name]
      return item
    end
            '';
        };
        window = {
          completion = {
            border = [ "╭" "┈" "╮" "│" "╯" "┈" "╰" "│" ];
            scrollbar = true;
          };
          documentation = {
            border = [ "╭" "┈" "╮" "│" "╯" "┈" "╰" "│" ];
            scrollbar = true;
          };
        };
      };
    };
    luasnip.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp-path.enable = true;
    cmp-buffer.enable = true;
    cmp_luasnip.enable = true;
    which-key.enable = true;
    friendly-snippets.enable = true;
  };
}
