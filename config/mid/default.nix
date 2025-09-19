{ ... }:
{
  imports = [ 
    ../modules/mappings.nix
    ../modules/colorscheme.nix
    ../modules/user-commands.nix
    ../modules/options.nix
    ../modules/treesitter.nix
    ../modules/toggleterm.nix
    ../modules/nvim-tree.nix
    ../modules/which-key.nix
    ../modules/lualine.nix

    ../modules/cmp.nix
    ../modules/lsp.nix
    ../modules/conform.nix
    ../modules/harpoon.nix
    ../modules/telescope.nix
  ];
}
