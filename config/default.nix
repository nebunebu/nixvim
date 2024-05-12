{
  imports = [
    ./core/autoCmd.nix
    # ./core/customFunctions.nix
    # ./core/highlight.nix
    ./core/options.nix
    # ./plugins/default.nix
  ];

  # globals = {
  #   mapleader = " ";
  # };
  enableMan = true;
  clipboard.providers.wl-copy.enable = true;
}
