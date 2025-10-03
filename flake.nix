{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/25.05";
    nvf.url = "github:notashelf/nvf/";
  };

  outputs = {nixpkgs, ...} @ inputs: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};

    jvimFullModule = {
      inherit pkgs;
      extraSpecialArgs = {
        lspEnable = true;
        treesitterEnable = true;
        dapEnable = true;
        formatEnable = true;
      };
      modules = [./config/full];
    };

    jvimMinModule = {
      inherit pkgs;
      extraSpecialArgs = {
        lspEnable = false;
        treesitterEnable = true;
        dapEnable = false;
        formatEnable = false;
      };
      modules = [./config/minimal];
    };

    full = (inputs.nvf.lib.neovimConfiguration jvimFullModule).neovim;
    min = (inputs.nvf.lib.neovimConfiguration jvimMinModule).neovim;
  in {
    packages.${system} = {
      inherit full min;
    };
  };
}
