{
  description = "fix-s22pdf";

  inputs = {
    nixpkgs-pointer.url = "github:yipengsun/nixpkgs-pointer";
    nixpkgs.follows = "nixpkgs-pointer/nixpkgs";
    flake-utils.follows = "nixpkgs-pointer/flake-utils";
  };

  outputs = { self, nixpkgs-pointer, nixpkgs, flake-utils }:
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
