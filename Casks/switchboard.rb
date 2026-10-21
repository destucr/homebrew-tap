cask "switchboard" do
  version "1.1.0"
  sha256 "bad4ca0a4cb4b47771ba2ab505086fd1b9606118bc568ca6a8bfe3c5e1a7d970"

  url "https://github.com/destucr/Switchboard/releases/download/v#{version}/Switchboard-#{version}.zip"
  name "Switchboard"
  desc "Menu bar app showing every local port with its project"
  homepage "https://github.com/destucr/Switchboard"

  depends_on macos: ">= :sonoma"

  app "Switchboard.app"

  zap trash: [
    "~/Library/Application Support/Switchboard",
    "~/Library/Logs/Switchboard",
  ]
end
