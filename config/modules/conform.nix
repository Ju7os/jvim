{
  plugins.conform-nvim = {
    enable = true;
    settings = {
      formatters_by_ft = {
        nix = [ "nixfmt" ]; 
        glsl = [ "clang-format" ]; c = [ "clang-format" ]; cpp = [ "clang-format" ]; rust = [ "rustfmt" ]; python = [ "isort" "black" ]; lua = [ "stylua" ];
        "_" = [ "trim_whitespace" "trim_newlines" ];
      };
      format_on_save = /*Lua*/ ''
  function(bufnr)
    local ignore_filetypes = {"nix",}
    if vim.tbl_contains(ignore_filetypes, vim.bo[bufnr].filetype) then
      return 
    else
      return { async = false, lsp_format = "fallback", timeout = 500}
    end
  end
        '';
      log_level = "warn";
      notify_on_error = false;
      notify_no_formatters = true;
    };
  };
}
