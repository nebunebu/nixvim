{
  plugins.cmp = {
    enable = true;
    settings = {
      window = {
        completion.border = [ "╭" "─" "╮" "│" "╯" "─" "╰" "│" ];
        documentation.border = [ "╭" "─" "╮" "│" "╯" "─" "╰" "│" ];
      };
    };
    autoEnableSources = true;
    settings = {
      snippet = {
        expand = "luasnip";
      };
    };
    # cmdline = {
    #   "/" = {
    #     mapping = {
    #     };
    #   };
    # };
    # sources = [
    #   { name = "cmp_nvim_lsp"; }
    #   { name = "nvim_lsp"; }
    #   { name = "nvim_lsp_signature_help"; }
    #   { name = "luasnip"; }
    #   { name = "path"; }
    #   { name = "buffer"; }
    #   { name = "cmp_luasnip"; }
    # ];
    # mapping = {
    #   "<C-d>" = "cmp.mapping.scroll_docs(-4)";
    #   "<C-f>" = "cmp.mapping.scroll_docs(4)";
    #   "<C-Space>" = "cmp.mapping.complete()";
    #   "<C-e>" = "cmp.mapping.close()";
    #   "<Tab>" = {
    #     modes = [ "i" "s" ];
    #     action = "cmp.mapping.select_next_item()";
    #   };
    #   "<S-Tab>" = {
    #     modes = [ "i" "s" ];
    #     action = "cmp.mapping.select_prev_item()";
    #   };
    #   "<CR>" = "cmp.mapping.confirm({ select = true })";
    # };
  };
}
