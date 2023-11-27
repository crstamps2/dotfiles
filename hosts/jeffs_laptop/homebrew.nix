{
  config,
  pkgs,
  ...
}: {
  #homebrew packages
  homebrew = {
    enable = true;
    onActivation.autoUpdate = true;
    onActivation.upgrade = true;
    onActivation.cleanup = "zap";
    brews = [
      "cask"
    ];
    taps = [
      "homebrew/bundle"
      "homebrew/cask-fonts"
      "homebrew/services"
    ];
    casks = [
      "1password"
      "1password-cli" # need to install CLI via brew too to make biometric unlock work with GUI app
      "betterzip" # zip/unzip for quicklook
      "google-chrome"
      "discord"
      "iterm2"
      "microsoft-office"
      "microsoft-remote-desktop"
      "moonlight"
      "mudlet" # MUD client
      "obs"
      "OrbStack"
      "plex"
      "qlmarkdown" # markdown preview in quicklook
      "slack"
      "spotify"
      "shottr" # screenshot tool
      "steam"
      "VIA"
      "vlc" # video player
      "vmware-fusion"
      "visual-studio-code"
      "zoom"
    ];
    masApps = {
      "1Password for Safari" = 1569813296;
      "Tailscale" = 1475387142;
      "consent-o-matic" = 1606897889;
      "Kagi Search for Safari" = 1622835804;
      "AdGuard for Safari" = 1440147259;
    };
  };
}