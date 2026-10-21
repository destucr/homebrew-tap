cask "switchboard" do
  version "1.2.0"
  sha256 "ba6cae2d777ceef2b5df775dbe97675b3079018621db4de5ed674f0d2082263f"

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
