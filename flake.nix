{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-24.11-darwin";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        devShells.default =
          with pkgs;
          mkShell {
            packages = [
              beam.packages.erlang_27.elixir_1_17
              diffutils
              delta
            ];

            shellHook = ''
              # limit mix to current project
              mkdir -p .nix-mix
              export MIX_HOME=$PWD/.nix-mix

              # rewire executables
              export PATH=$MIX_HOME/bin:$PATH
              export PATH=$MIX_HOME/escripts:$PATH
            '';
          };
      }
    );
}
