cask "localserver" do
  version "1.0.0"
  sha256 "81749608c9875a0b973382a25a3a65e190e9bf27a00cee52b399eba820098f88"

  url "https://github.com/destucr/LocalServer/releases/download/v#{version}/LocalServer-#{version}.zip"
  name "LocalServer"
  desc "Menu bar app showing every local port with its project"
  homepage "https://github.com/destucr/LocalServer"

  depends_on macos: ">= :sonoma"

  app "LocalServer.app"

  zap trash: "~/Library/Logs/LocalServer"
end
