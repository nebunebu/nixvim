{ pkgs, ... }:
let
  pkgsDir = ../../../pkgs;
in
{
  extraPlugins = [
    {
      plugin = pkgs.callPackage "${pkgsDir}/journal-nvim.nix" { };
      config = /* lua */ ''
        lua << EOF
        require("journal").setup({
          root = '~/.journal',
        })
        EOF
      '';
    }
  ];
}
