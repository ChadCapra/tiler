{
  description = "Elixir Dev Shell";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { nixpkgs, ... }:
    let
      system = "x86_64-linux";  # Adjust if on ARM (e.g., "aarch64-linux")
      pkgs = import nixpkgs { inherit system; };
    in {
      devShells.${system}.default = pkgs.mkShell {
        buildInputs = [
          pkgs.elixir
          pkgs.erlang
          pkgs.rebar3  # Optional, for compiling dependencies
          pkgs.gnumake # If you need Make for building Elixir projects
        ];

        shellHook = ''
          echo "Elixir dev shell ready!"
          elixir --version
        '';
      };
    };
}

