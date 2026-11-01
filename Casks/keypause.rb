cask "keypause" do
  version "1.0.3"
  sha256 "a55deb1bb5cfd6a496d168b162347900039003c67b6ae61747f408effd9093ba"

  url "https://github.com/destucr/Keypause/releases/download/v#{version}/Keypause.dmg"
  name "Keypause"
  desc "Lock the keyboard while cleaning it"
  homepage "https://github.com/destucr/Keypause"

  depends_on macos: :sonoma

  app "Keypause.app"
  binary "#{appdir}/Keypause.app/Contents/Resources/keypause"   # the keypause command

  # Ad-hoc signed, not notarized: clear the quarantine flag so it opens without a Gatekeeper warning.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Keypause.app"]
  end

  zap trash: "~/Library/Preferences/com.destucr.Keypause.plist"
end
