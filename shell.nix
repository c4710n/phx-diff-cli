{ pkgs ? import <nixpkgs> { } }:

with pkgs;

mkShell {
  buildInputs = [
    beam.packages.erlangR24.elixir_1_12
  ]
  ++ lib.optionals stdenv.isLinux [
    # For ExUnit Notifier on Linux.
    libnotify

    # For file_system on Linux.
    inotify-tools
  ]
  ++ lib.optionals stdenv.isDarwin ([
    # For ExUnit Notifier on macOS.
    terminal-notifier

    # For file_system on macOS.
    darwin.apple_sdk.frameworks.CoreFoundation
    darwin.apple_sdk.frameworks.CoreServices
  ]);

  shellHook = ''
    # allows mix to work on the local directory
    mkdir -p .nix-mix
    mkdir -p .nix-hex
    export MIX_HOME=$PWD/.nix-mix
    export HEX_HOME=$PWD/.nix-hex
    export ERL_LIBS=$HEX_HOME/lib/erlang/lib

    # make shell more friendly
    # export PATH=$MIX_HOME/bin:$PATH
    # export PATH=$HEX_HOME/bin:$PATH
    export ERL_AFLAGS="-kernel shell_history enabled"
  '';
}
