{ pkgs, ... }:

{
  home.username = "cafeina";
  home.homeDirectory = "/home/cafeina";

  home.packages = with pkgs; [
    fastfetch
    htop
    lm_sensors
    kitty
    rofi
  ];

  xsession.windowManager.bspwm = {
    enable = true;

    monitors = {
      HDMI-0 = [
        "I"
        "II"
        "III"
        "IV"
        "V"
      ];
    };

    settings = {
      border_width = 1;
      window_gap = 0;
      split_radio = "0.52";
      borderless_monocle = true;
      gapless_monocle = true;
    };
  };

  services.sxhkd = {
    enable = true;

    keybindings = {
      "super + Return" = "kitty";
      "super + e" = "thunar";
      "super + @space" = "rofi -show drun -show-icons";
      "super + Escape" = "pkill -USR1 -x sxhkd";
      "super + alt + {q,r}" = "bspc {quit,wm -r}";
      "super + {_,shift + }w" = "bspc node -{c,k}";
    };
  };

  home.stateVersion = "24.11";

  programs.home-manager.enable = true;
}
