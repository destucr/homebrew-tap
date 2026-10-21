cask "switchboard" do
  version "1.5.0"
  sha256 "bb23a86e905b0a284ade0d336879d5cd0867680b7e2746dbc0783319e954d361"

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

  zap trash: [
    "~/Library/Application Support/Switchboard",
    "~/Library/Logs/Switchboard",
  ]
end
