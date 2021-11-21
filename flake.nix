{
  description = "fix-s22pdf";

  inputs = rec {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        devShell = pkgs.mkShell.override { stdenv = pkgs.stdenvNoCC; } {
          buildInputs = [ pkgs.mupdf ];
        };
      });
}
