{ config, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ./home-manager.nix
      ./sound.nix
      ./security.nix
      ./boot.nix
      ./rdu.nix
    ];

  networking.hostName = "nixos"; 

  networking.networkmanager.enable = true;

  networking.nameservers = [ "1.1.1.1" "1.0.0.1" ];

  time.timeZone = "America/Managua";

  i18n.defaultLocale = "en_US.UTF-8";

  services.xserver = {
    enable = true;

    windowManager.bspwm.enable = true;

    displayManager.lightdm.enable = true;

    xkb = {
      layout = "us";
      variant = "altgr-intl";
    };
  };

  services.libinput = {
    enable = true;

    touchpad = {
      tapping = false;
      accelSpeed = "0.6";
    };
  };

  users.users.cafeina = {
    isNormalUser = true;
    extraGroups = [
      "adbusers"
      "input"
      "libvirtd"
      "networkmanager"
      "plugdev"
      "transmission"
      "video"
      "wheel"
    ];
  };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    vim_configurable
    git
    firefox
    brightnessctl
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji
    liberation_ttf
    nerd-fonts.jetbrains-mono
  ];

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
    extraPackages = with pkgs; [
      intel-media-driver
      libvdpau-va-gl
      mesa
      vpl-gpu-rt
    ];

    extraPackages32 = with pkgs.pkgsi686Linux; [
      intel-media-driver
      libvdpau-va-gl
    ];
  };

  programs.xfconf.enable = true;

  programs.thunar = {
    enable = true;

    plugins = with pkgs.xfce; [
      thunar-archive-plugin
      thunar-volman
    ];
  };

  services.gvfs.enable = true;
  services.tumbler.enable = true;
  
  system.stateVersion = "24.11";
}
