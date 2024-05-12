{
  imports = [
    ./core
    ./plugins
  ];

  enableMan = true;
  clipboard = {
    providers.wl-copy.enable = true;
    register = "unnamedplus";
  };
}
