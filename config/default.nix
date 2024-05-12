{ pkgs, ...}:
{
  imports = [
    ./core/autoCmd.nix
    # ./core/customFunctions.nix
    # ./core/highlight.nix
    ./core/options.nix
    ./plugins/default.nix
  ];

  enableMan = true;
  clipboard.providers.wl-copy.enable = true;
  extraPlugins = [
    {
      plugin = pkgs.vimPlugins.rose-pine;
      config = "colorscheme rose-pine";
    }
  ];
}
