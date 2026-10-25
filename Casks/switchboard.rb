cask "switchboard" do
  version "1.10.0"
  sha256 "cf385a4e5bec38ded9cce8d9db7440ecb7a5ba4e48edd92bad646702f519c95e"

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
