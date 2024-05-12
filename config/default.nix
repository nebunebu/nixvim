{
  imports = [
    ./core/autoCmd.nix
    # ./core/customFunctions.nix
    ./core/globals.nix
    ./core/highlight.nix
    ./core/options.nix
    ./plugins/default.nix
  ];

  enableMan = true;
  clipboard.providers.wl-copy.enable = true;
}
