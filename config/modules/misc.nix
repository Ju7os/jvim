{
  plugins = {
    indent-o-matic = {
      enable = true;
      settings = {
        max_lines = 2048;
        standard_widths = [ 2 4 ];
        filetype_nix.standard_widths = [2];
      };
    };
    markdown-preview = {
      enable = true;
    };
  };
}
