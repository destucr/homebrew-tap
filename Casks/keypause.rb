cask "keypause" do
  version "1.0.4"
  sha256 "ac129dd3ab4b2478ad077cccbb7f3c402515e07e4c065443eb0cef978d0c3323"

  url "https://github.com/destucr/Keypause/releases/download/v#{version}/Keypause.dmg"
  name "Keypause"
  desc "Lock the keyboard while cleaning it"
  homepage "https://github.com/destucr/Keypause"

  depends_on macos: :sonoma

  app "Keypause.app"
  binary "#{appdir}/Keypause.app/Contents/Resources/keypause"   # the keypause command

  # Ad-hoc signed, not notarized: clear the quarantine flag so it opens without a Gatekeeper warning.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Keypause.app"]
  end

  zap trash: "~/Library/Preferences/com.destucr.Keypause.plist"
end
