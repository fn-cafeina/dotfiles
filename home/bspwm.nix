{
  xsession.windowManager.bspwm = {
    enable = true;

    monitors = {
      eDP-1 = [
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

    extraConfig = ''
      # Unmute audio and mic on bspwm startup
      wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
      wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle
    '';
  };
}
