cask "switchboard" do
  version "1.12.5"
  sha256 "225b7a461c13d0013804e2f7b7b89c7e52e51d85dfecb1f753c008b800257b30"

  url "https://github.com/destucr/Switchboard/releases/download/v#{version}/Switchboard-#{version}.zip"
  name "Switchboard"
  desc "Menu bar app showing every local port with its project"
  homepage "https://github.com/destucr/Switchboard"

  depends_on macos: :sonoma

  app "Switchboard.app"
  binary "#{appdir}/Switchboard.app/Contents/MacOS/Switchboard", target: "switchboard"

  zap trash: [
    "~/Library/Application Support/Switchboard",
    "~/Library/Logs/Switchboard",
  ]
end
