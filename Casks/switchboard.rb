cask "switchboard" do
  version "1.7.0"
  sha256 "acc8234399eda00593230d60e016369dd648b11f199fb31903367156b34cd053"

  url "https://github.com/destucr/Switchboard/releases/download/v#{version}/Switchboard-#{version}.zip"
  name "Switchboard"
  desc "Menu bar app showing every local port with its project"
  homepage "https://github.com/destucr/Switchboard"

  depends_on macos: ">= :sonoma"

  app "Switchboard.app"
  binary "#{appdir}/Switchboard.app/Contents/MacOS/Switchboard", target: "switchboard"
  binary "#{appdir}/Switchboard.app/Contents/MacOS/Switchboard", target: "switchboard"
  binary "#{appdir}/Switchboard.app/Contents/MacOS/Switchboard", target: "switchboard"
  binary "#{appdir}/Switchboard.app/Contents/MacOS/Switchboard", target: "switchboard"
  binary "#{appdir}/Switchboard.app/Contents/MacOS/Switchboard", target: "switchboard"
  binary "#{appdir}/Switchboard.app/Contents/MacOS/Switchboard", target: "switchboard"

  zap trash: [
    "~/Library/Application Support/Switchboard",
    "~/Library/Logs/Switchboard",
  ]
end
