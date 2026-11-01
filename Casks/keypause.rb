cask "keypause" do
  version "1.0.2"
  sha256 "46a62f1690319e6f342301e0d4fca1b7711b35ef01fd6d1f963ffb316885be4e"

  url "https://github.com/destucr/Keypause/releases/download/v#{version}/Keypause.dmg"
  name "Keypause"
  desc "Lock the keyboard while cleaning it"
  homepage "https://github.com/destucr/Keypause"

  depends_on macos: :sonoma

  app "Keypause.app"

  # Ad-hoc signed, not notarized: clear the quarantine flag so it opens without a Gatekeeper warning.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Keypause.app"]
  end

  zap trash: "~/Library/Preferences/com.destucr.Keypause.plist"
end
