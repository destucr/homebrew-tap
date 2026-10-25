cask "switchboard" do
  version "1.12.1"
  sha256 "c9113b08a0cb3a835b78829485790ac21eff14917e9454a5ae22977aabc2cb2d"

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
