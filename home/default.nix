{ pkgs, ... }:

{
  imports = [
    ./bspwm.nix
    ./sxhkd.nix
  ];

  home = {
    username = "cafeina";
    homeDirectory = "/home/cafeina";
    stateVersion = "24.11";
  };

  home.packages = with pkgs; [
    fastfetch
    htop
    lm_sensors
    kitty
    rofi
  ];

  programs.home-manager.enable = true;
}
