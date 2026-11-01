cask "keypause" do
  version "1.0.1"
  sha256 "740cb249f3f85d410a0ee2599f5cda25df46775979399773e3977ba5ab9586dd"

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
