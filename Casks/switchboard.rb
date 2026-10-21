cask "switchboard" do
  version "1.4.1"
  sha256 "d9d7e2b6c1f03b038e9da2928ecfd7f90a453ba45b61ce615105ab420d7e5f34"

  url "https://github.com/destucr/Switchboard/releases/download/v#{version}/Switchboard-#{version}.zip"
  name "Switchboard"
  desc "Menu bar app showing every local port with its project"
  homepage "https://github.com/destucr/Switchboard"

  depends_on macos: ">= :sonoma"

  app "Switchboard.app"
  binary "#{appdir}/Switchboard.app/Contents/MacOS/Switchboard", target: "switchboard"
  binary "#{appdir}/Switchboard.app/Contents/MacOS/Switchboard", target: "switchboard"
  binary "#{appdir}/Switchboard.app/Contents/MacOS/Switchboard", target: "switchboard"

  zap trash: [
    "~/Library/Application Support/Switchboard",
    "~/Library/Logs/Switchboard",
  ]
end
