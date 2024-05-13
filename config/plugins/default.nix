{
  imports = [
    ./alpha.nix
    ./cmp.nix
    ./extraPlugins
    ./lsp.nix
    ./lualine.nix
    ./luasnip.nix
    ./mkdnflow.nix
    ./none-ls.nix
    ./telescope.nix
    ./treesitter.nix
    ./undotree.nix
    ./which-key.nix
  ];

  plugins = {
    barbecue.enable = true;
    comment.enable = true;
    endwise.enable = true;
    fidget.enable = true;
    navbuddy.enable = true;
    navic.enable = true;
    nix-develop.enable = true;
    nix.enable = true;
    nvim-autopairs.enable = true;
    nvim-colorizer.enable = true;
    oil.enable = true;
    rainbow-delimiters.enable = true;
    surround.enable = true;
    tmux-navigator.enable = true;
    todo-comments.enable = true;
    indent-blankline = {
      enable = true;
      settings = {
        scope.enabled = true;
      };
    };

    project-nvim = {
      enable = true;
      enableTelescope = true;
    };
  };
}
