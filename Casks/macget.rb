cask "macget" do
  version "1.3.0"
  sha256 "f4f80a26a651cc6e6c7f6892d2190163b81e3f5a28f5c28a4d6b8a32388844df"

  url "https://github.com/Suryansh-Codes2209/Macget/releases/download/v#{version}/macget.dmg",
      verified: "github.com/Suryansh-Codes2209/Macget/"
  name "MacGet"
  desc "Multi-threaded download manager with media, torrent, and book-catalog support"
  homepage "https://macget.suryansh.work/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "Macget.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Macget.app"]
  end

  zap trash: [
    "~/Library/Application Support/Macget",
    "~/Library/Caches/com.suryansh.Macget",
    "~/Library/HTTPStorages/com.suryansh.Macget",
    "~/Library/Preferences/com.suryansh.Macget.plist",
    "~/Library/Saved Application State/com.suryansh.Macget.savedState",
    "~/Library/Application Support/Google/Chrome/NativeMessagingHosts/com.suryansh.macget.json",
    "~/Library/Application Support/Google/Chrome Beta/NativeMessagingHosts/com.suryansh.macget.json",
    "~/Library/Application Support/Google/Chrome Canary/NativeMessagingHosts/com.suryansh.macget.json",
    "~/Library/Application Support/Microsoft Edge/NativeMessagingHosts/com.suryansh.macget.json",
    "~/Library/Application Support/BraveSoftware/Brave-Browser/NativeMessagingHosts/com.suryansh.macget.json",
    "~/Library/Application Support/Chromium/NativeMessagingHosts/com.suryansh.macget.json",
    "~/Library/Application Support/Mozilla/NativeMessagingHosts/com.suryansh.macget.json",
  ]

  caveats <<~EOS
    MacGet requires macOS 26.4 or later on Apple silicon.

    This build is not notarized by Apple. The cask removes the quarantine
    attribute after install so MacGet launches without a Gatekeeper prompt.
  EOS
end
