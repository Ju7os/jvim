{
  plugins.treesitter = {
    enable = true;
    settings = {
      indent.enable = true;
      ensure_installed = [ "latex" "lua" "c" "cpp" "rust" "vim" "vimdoc" "query" "markdown" "markdown_inline" "bash" "nix" "python"];
      auto_install = true;
      sync_install = false;
      highlight.additional_vim_regex_highlighting = false;
      highlight.enable = true;
      highlight.disable = /*Lua*/ ''
  function(_, buf)
    local max_filesize = 100 * 1024 -- 100 KB
    local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
    if ok and stats and stats.size > max_filesize then
      return true
    else
      return false
    end
  end
        '';
    };
  };
}
