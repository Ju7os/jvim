{ pkgs, ... }:
{
  config.vim.notes = {
    # neorg = {
    #   enable = true;
    #   treesitter.enable = true;
    #   setupOpts = {
    #     load = {
    #       "core_defaults".enable = true;
    #     };
    #   };
    # };

    orgmode = {
      enable = true;
      setupOpts = {
        org_agenda_files = ["~/orgfiles/**/*" "~/Work/cahier-de-these/*"];
        org_default_notes_file = "~/orgfiles/refile.org";
      };
      treesitter.enable = true;
      treesitter.orgPackage = pkgs.tree-sitter-grammars.tree-sitter-org-nvim;
    };
  };
}
