cask "switchboard" do
  version "1.9.0"
  sha256 "966d69ca1479cbd9e2734fdf9e4d9d173b7dd50117e841a0d804160136238115"

  url "https://github.com/destucr/Switchboard/releases/download/v#{version}/Switchboard-#{version}.zip"
  name "Switchboard"
  desc "Menu bar app showing every local port with its project"
  homepage "https://github.com/destucr/Switchboard"

  depends_on macos: :sonoma

  app "Switchboard.app"
  binary "#{appdir}/Switchboard.app/Contents/MacOS/Switchboard", target: "switchboard"
  binary "#{appdir}/Switchboard.app/Contents/MacOS/Switchboard", target: "switchboard"
  binary "#{appdir}/Switchboard.app/Contents/MacOS/Switchboard", target: "switchboard"
  binary "#{appdir}/Switchboard.app/Contents/MacOS/Switchboard", target: "switchboard"
  binary "#{appdir}/Switchboard.app/Contents/MacOS/Switchboard", target: "switchboard"
  binary "#{appdir}/Switchboard.app/Contents/MacOS/Switchboard", target: "switchboard"
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
