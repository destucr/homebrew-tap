cask "keypause" do
  version "1.0.0"
  sha256 "62eb1e1771df0db8b57f047fcec757debf0c3e5fbb93bf78751e400e7a7c2bf3"

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
