{ ... }:
{
  imports = [ 
    ../modules/mappings.nix
    ../modules/colorscheme.nix
    ../modules/user-commands.nix
    ../modules/options.nix
    ../modules/toggleterm.nix
    ../modules/nvim-tree.nix
    ../modules/binds.nix
    ../modules/lualine.nix
    ../modules/misc.nix
    ../modules/languages.nix 
  ];
}
