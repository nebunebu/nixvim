{
  plugins = {
    lsp = {
      enable = true;
      keymaps = {
        diagnostic = {
          "<leader>j" = "goto_next";
          "<leader>k" = "goto_prev";
        };
        lspBuf = {
          K = "hover";
          gD = "references";
          gd = "definition";
          gi = "implementation";
          gt = "type_definition";
        };
      };
      servers = {
        astro.enable = true;
        bashls.enable = true;
        ccls.enable = true;
        cmake.enable = true;
        cssls.enable = true;
        digestif.enable = true;
        docker-compose-language-service.enable = true;
        dockerls.enable = true;
        eslint.enable = true;
        hls.enable = true;
        html.enable = true;
        jsonls.enable = true;
        lua-ls.enable = true;
        nil_ls.enable = true;
        pyright.enable = true;
        taplo.enable = true;
        tsserver.enable = true;
        yamlls.enable = true;
      };
    };
  };

  extraConfigLua = ''
    -- You will likely want to reduce updatetime which affects CursorHold
    -- note: this setting is global and should be set only once
    vim.o.updatetime = 250

    local border = {
      {"╭", "FloatBorder"},
      {"─", "FloatBorder"},
      {"╮", "FloatBorder"},
      {"│", "FloatBorder"},
      {"╯", "FloatBorder"},
      {"─", "FloatBorder"},
      {"╰", "FloatBorder"},
      {"│", "FloatBorder"},
    }

    vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
      group = vim.api.nvim_create_augroup("float_diagnostic", { clear = true }),
      callback = function ()
        vim.diagnostic.open_float(nil, {
          focus = false,
          border = border,
          scope = "cursor",
          close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
          relative = "cursor",
          anchor = "NW",
        })
      end
    })
  '';
}
