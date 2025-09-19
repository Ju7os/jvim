{
  description = "A nixvim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs =
    { nixvim, flake-parts, ... }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      perSystem =
        { system, ... }:
        let
          nixvimLib = nixvim.lib.${system};
          nixvim' = nixvim.legacyPackages.${system};

          fullNixvimModule = {
            inherit system; # or alternatively, set `pkgs`
            module = import ./config/full; # import the module directly
          };

          midNixvimModule = {
            inherit system; # or alternatively, set `pkgs`
            module = import ./config/mid; # import the module directly
          };

          minimalNixvimModule = {
            inherit system; # or alternatively, set `pkgs`
            module = import ./config/minimal; # import the module directly
          };
          full-nvim = nixvim'.makeNixvimWithModule fullNixvimModule;
          mid-nvim = nixvim'.makeNixvimWithModule midNixvimModule;
          minimal-nvim = nixvim'.makeNixvimWithModule minimalNixvimModule;
        in
        {
          checks = {
            # Run `nix flake check .` to verify that your config is not broken
            full = nixvimLib.check.mkTestDerivationFromNixvimModule fullNixvimModule;
            mid =  nixvimLib.check.mkTestDerivationFromNixvimModule midNixvimModule;
            min = nixvimLib.check.mkTestDerivationFromNixvimModule minimalNixvimModule;
          };

          packages = {
            # Lets you run `nix run .` to start nixvim
            full = full-nvim;
            mid = mid-nvim;
            min = minimal-nvim;
          };
        };
    };
}
