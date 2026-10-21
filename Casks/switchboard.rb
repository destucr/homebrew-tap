cask "switchboard" do
  version "1.8.1"
  sha256 "65f3d108e808ba04065f28ab098f6648ba0c6068684e3a35ede5a1c9af7c30d7"

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
  binary "#{appdir}/Switchboard.app/Contents/MacOS/Switchboard", target: "switchboard"
  binary "#{appdir}/Switchboard.app/Contents/MacOS/Switchboard", target: "switchboard"

  zap trash: [
    "~/Library/Application Support/Switchboard",
    "~/Library/Logs/Switchboard",
  ]
end
