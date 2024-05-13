let
  pad = {
    type = "padding";
    val = 2;
  };
in
{
  plugins.alpha = {
    enable = true;
    iconsEnabled = true;
    theme = null;
    layout = [
      pad
      {
        opts = {
          hl = "Type";
          position = "center";
        };
        type = "text";
        val = [
          " ###//    // "
          " ####//   // "
          " #####//  // "
          " ## ###// // "
          " ##  ###//// "
          " ##   ###/// "
          " ##    ###// "
        ];
      }
      pad
      {
        opts = {
          hl = "Keyword";
          position = "center";
        };
        type = "text";
        val = "Let scholastic sophisters entangle themselves in their own cobwebs";
      }
      pad
      # {
      #   type = "group";
      #   val = [
      #     {
      #       on_press = {
      #         __raw = "function() vim.cmd[[ene]] end";
      #       };
      #       opts = {
      #         shortcut = "n";
      #       };
      #       type = "button";
      #       val = "  New file";
      #     }
      #     {
      #       on_press = {
      #         __raw = "function() vim.cmd[[qa]] end";
      #       };
      #       opts = {
      #         shortcut = "q";
      #       };
      #       type = "button";
      #       val = " Quit Neovim";
      #     }
      #   ];
      # }
    ];
  };
}
# {
#   type = "group";
#   val = [
#     {
#       type = "padding";
#       val = 2;
#     }
#     {
#       type = "group";
#       val = {
#         entries = [
#           {
#             command = "<CMD>ene <CR>";
#             desc = "  New file";
#             shortcut = "e";
#           }
#           {
#             command = "<CMD>e $HOME/.wiki/index.md<CR>";
#             desc = "  Wiki";
#             shortcut = "w";
#           }
#           {
#             command = "<CMD>e $HOME/.nix-config/flake.nix<CR>";
#             desc = " nix-config";
#             shortcut = "c";
#           }
#           {
#             command = ":qa<CR>";
#             desc = "󰩈 Quit Neovim";
#             shortcut = "q";
#           }
#         ];
#       };
#     }
#     {
#       type = "padding";
#       val = 2;
#     }
#     {
#       opts = {
#         hl = "Keyword";
#         position = "center";
#       };
#       type = "text";
#       val = "Let scholastic sophisters entangle themselves in their own cobwebs";
#     }
#   ];
# };
