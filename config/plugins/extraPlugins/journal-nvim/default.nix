{ pkgs, ... }:
let
  pkgsDir = ../../../../pkgs;
in
{
  extraPlugins = [
    {
      plugin = pkgs.callPackage "${pkgsDir}/journal-nvim.nix" { };
    }
  ];
}
