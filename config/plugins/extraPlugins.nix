{ pkgs, ... }:
{
  extraPlugins = [
    {
      plugin = pkgs.vimPlugins.rose-pine;
      config = "colorscheme rose-pine";
    }
    {
      plugin = pkgs.callPackage ../../pkgs/triptych-nvim.nix { };
      config = /* lua */ ''
        lua require("triptych").setup({})
      '';
    }
    {
      plugin = pkgs.callPackage ../../pkgs/journal-nvim.nix { };
      config = /* lua */ ''
        lua << EOF
        require("journal").setup({})
        EOF
      '';
    }
    {
      plugin = pkgs.callPackage ../../pkgs/surround-ui-nvim.nix { };
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
