{ ... }:
{
  imports = [ 
    ../modules/mappings.nix
    ../modules/colorscheme.nix
    ../modules/user-commands.nix
    ../modules/options.nix
    ../modules/languages.nix 
    ../modules/toggleterm.nix
    ../modules/nvim-tree.nix
    ../modules/binds.nix
    ../modules/lualine.nix
    # ../modules/orgmode.nix
    ../modules/misc.nix
    ../modules/cmp.nix
    ../modules/harpoon.nix
    ../modules/telescope.nix
    ../modules/visuals.nix
  ];
}
