{ pkgs, ... }:
let
  pkgsDir = ../../../pkgs;
in
{

  imports = [
    ./journal-nvim
  ];

  extraPlugins = [
    {
      plugin = pkgs.vimPlugins.rose-pine;
      config = "colorscheme rose-pine";
    }
    {
      plugin = pkgs.callPackage "${pkgsDir}/triptych-nvim.nix" { };
      config = /* lua */ ''
        lua << EOF
        require("triptych").setup({})
        EOF
      '';
    }
    {
      plugin = pkgs.callPackage "${pkgsDir}/surround-ui-nvim.nix" { };
      config = /* lua */ ''
        lua << EOF
        require("surround-ui").setup({
          root_key = "S"
        })
        EOF
      '';
    }
  ];
}

# {
#   plugin = pkgs.callPackage ../pkgs/yazi-nvim.nix { };
# }
