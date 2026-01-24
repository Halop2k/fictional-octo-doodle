{ ... }:

{
  programs.firefox = {
    enable = true;
    policies = {
      AutofillCreditCardEnabled = false;
      CaptivePortal = false;
      DisableFeedbackCommands = true;
      DisableFirefoxAccounts = true;
      DisableFirefoxStudies = true;
      DisableMasterPasswordCreation = true;
      DisableSetDesktopBackground = true;
      DisableTelemetry = true;
      DNSOverHTTPS = {
        Enabled = false;
      };
      DontCheckDefaultBrowser = true;
      EnableTrackingProtection = {
        Value = true;
      };
      EncryptedMediaExtensions = {
        Enabled = false;
      };
      FirefoxHome = {
        Search = true;
        TopSites = true;
        SponsoredTopSites = false;
        Highlights = false;
        Pocket = false;
        Stories = false;
        SponsoredPocket = false;
        SponsoredStories = false;
        Snippets = false;
        Locked = true;
      };
      FirefoxSuggest = {
        WebSuggestions = true;
        SponsoredSuggestions = false;
        ImproveSuggest = false;
        Locked = true;
      };
      GenerativeAI = {
        Enabled = false;
        Locked = true;
      };
      NoDefaultBookmarks = true;
      OfferToSaveLogins = false;
      OverrideFirstRunPage = "";
      PasswordManagerEnabled = false;
      SkipTermsOfUse = true;
      UserMessaging = {
        ExtensionRecommendations = false;
        FeatureRecommendations = false;
        UrlbarInterventions = false;
        SkipOnboarding = true;
        MoreFromMozilla = false;
        FirefoxLabs = false;
        Locked = true;
      };
    };
    profiles.main = {
      isDefault = true;
      search = {
        force = true;
        default = "google";
        privateDefault = "ddg";
      };
      settings = {
        "general.smoothScroll" = false;
        "browser.warnOnQuit" = false;
        "browser.warnOnQuitShortcut" = false;
        "browser.backspace_action" = 0;
        "browser.urlbar.showSearchSuggestionsFirst" = false;
        "browser.newtabpage.activity-stream.topSitesRows" = 4;
        "reader.content_width" = 7;
        "reader.line_height" = 3;
        "browser.translations.neverTranslateLanguages" = "ru,lv";
        "extensions.autoDisableScopes" = 0;
      };
      extensions = {
        #        packages = with inputs.firefox-addons.packages.${pkgs.system}; [
        #          ublock-origin
        #          sponsorblock
        #
        #          redirector
        #        ];
        force = true;
        settings = {
          "uBlock0@raymondhill.net".settings = {
            selectedFilterLists = [
              "ublock-filters"
              "ublock-badware"
              "ublock-privacy"
              "ublock-unbreak"
              "ublock-quick-fixes"

              "easylist"
              "adguard-generic"

              "easyprivacy"
              "adguard-spyware"

              "fanboy-cookiemonster"
              "ublock-cookies-easylist"

              "fanboy-social"

              "LVA-0"
              "RUS-0"
              "RUS-1"
            ];
          };
        };
      };
    };
  };
}
