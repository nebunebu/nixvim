{ pkgs, ... }: 
{
  extraPlugins = [
    {
      plugin = pkgs.vimPlugins.rose-pine;
      config = "colorscheme rose-pine";
    }
  # {
  #   plugin = pkgs.callPackage ../pkgs/yazi-nvim.nix { };
  # }
    {
      plugin = pkgs.callPackage ../../pkgs/triptych-nvim.nix { };
 #    config = /* lua */ ''require("triptych").setup({})'';
    }
  ];
   extraConfigLua = ''
     require("triptych").setup({})
   '';
}
