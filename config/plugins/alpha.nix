{ lib, ... }:
{
  plugins.alpha = {
    enable = true;
    iconsEnabled = true;
    theme = null;
    layout =
      let
        width = 30;
        mkPadding = size: { type = "padding"; val = size; };
        mkHeading = title: {
          type = "text";
          val = title + lib.concatStrings (lib.replicate ((width + 3) - (builtins.stringLength title)) " ");
          opts = {
            hl = "String";
            position = "center";
          };
        };
        mkButton = title: icon: command: shortcut: {
          type = "button";
          val = icon + "  " + title;
          # FIX: callback error
          # on_press.raw = "function() vim.cmd[[${command}]] end";
          opts = {
            keymap = [
              "n"
              shortcut
              "<CMD>${command}<CR>"
              {
                noremap = true;
                silent = true;
                nowait = true;
              }
            ];
            shortcut = shortcut;
            position = "center";
            cursor = 0;
            width = width;
            align_shortcut = "right";
            hl_shortcut = "Keyword";
          };
        };
      in
      [
        (mkPadding 2)
        {
          opts = {
            hl = "Macro";
            position = "center";
          };
          type = "text";
          val = [
            " ##//    // "
            " ###//   // "
            " ####//  // "
            " ## ##// // "
            " ##  ##//// "
            " ##   ##/// "
            " ##    ##// "
          ];
        }
        (mkPadding 2)
        (mkHeading "configs")
        (mkButton "nix-config" "󱄅" "e $HOME/.nix-config/flake.nix" "c")
        (mkButton "nixvim" "" "e $HOME/.nixvim/flake.nix" "v")
        (mkPadding 1)
        (mkHeading "writing")
        (mkButton "wiki" "󰖬" "e $HOME/.wiki/index.md" "w")
        (mkPadding 1)
        (mkHeading "editor")
        (mkButton "new file" "" "enew" "e")
        (mkButton "exit" "󰩈" "qa" "q")
        (mkPadding 2)
        # TODO: buttons to add
        # (mkButton "journal" "󱙼" "test" "j")
        # (mkButton "blog" "" "test" "b")
        # (mkButton "recent files" "󱙼" "test" "o")
        # (mkButton "marks" "󱙼" "test" "m")
        # (mkButton "MRU" "󱙼" "test" "r")
        # (mkButton "/tmp" "󱙼" "test" "t")
        # TODO: make quote single attrset
        {
          opts = {
            hl = "Type";
            position = "center";
          };
          type = "text";
          val = "Let scholastic sophisters entangle";
        }
        {
          opts = {
            hl = "Type";
            position = "center";
          };
          type = "text";
          val = "themselves in their own cobwebs";
        }
      ];
  };
}
