{
  plugins = {
    lsp-format.enable = true;
    none-ls = {
      enable = true;
      enableLspFormat = true;
      sources = {
        code_actions = {
          #   eslint.enable = true;
          #   gitsigns.enable = true;
          #   shellcheck.enable = true;
          statix.enable = true;
        };
        completion = {
          luasnip.enable = true;
        };
        diagnostics = {
          cppcheck.enable = true;
          deadnix.enable = true;
          markdownlint.enable = true;
          # eslint.enable = true;
          # luacheck.enable = true;
          pylint.enable = true;
          # shellcheck.enable = true;
        };
        formatting = {
          nixpkgs_fmt.enable = true;
          # beautysh.enable = true;
          # fourmolu.enable = true;
          # jq.enable = true;
          stylua.enable = true;
        };
      };
    };
  };
}
