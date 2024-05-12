{ pkgs, ...}:
{
  imports = [
    ./core/autoCmd.nix
    # ./core/customFunctions.nix
    # ./core/highlight.nix
    # ./core/options.nix
    # ./plugins/default.nix
  ];

  enableMan = true;
  clipboard.providers.wl-copy.enable = true;
  opts = {
    autochdir = true;
    number = true;
    relativenumber = true;
    expandtab = true;
    shiftwidth = 2;
    tabstop = 2;
    smarttab = true;
    autoindent = true;
    linebreak = true;
    hidden = true;
    cindent = true;
    undofile = true;
    swapfile = false;
    ignorecase = true;
    smartcase = true;
    incsearch = true;
    fillchars = { eob = " "; };
  };
  extraPlugins = [
    {
      plugin = pkgs.vimPlugins.rose-pine;
      config = "colorscheme rose-pine";
    }
  ];
}
