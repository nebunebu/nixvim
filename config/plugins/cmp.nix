{
  plugins.luasnip.enable = true;

  plugins.cmp = {
    enable = true;
    settings = {
      window = {
        completion.border = [ "╭" "─" "╮" "│" "╯" "─" "╰" "│" ];
        documentation.border = [ "╭" "─" "╮" "│" "╯" "─" "╰" "│" ];
      };
      snippet = {
        expand = ''
          function(args)
            require('luasnip').lsp_expand(args.body)
          end
        '';
      };
    };
    autoEnableSources = true;
    cmdline = {
      "/" = {
        mapping = {
          __raw = "cmp.mapping.preset.cmdline()";
        };
        sources = [{ name = "buffer"; }];
      };
      ":" = {
        mapping = {
          __raw = "cmp.mapping.preset.cmdline()";
        };
        sources = [
          { name = "path"; }
          {
            name = "cmdline";
            option = {
              ignore_cmds = [
                "Man"
                "!"
              ];
            };
          }
        ];
      };
      settings = {
        sources = [
          { name = "nvim_lsp"; }
          { name = "luasnip"; }
          { name = "path"; }
          { name = "buffer"; }
        ];
      };
    };
  };
}
