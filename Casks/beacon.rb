cask "beacon" do
  version "0.13.0"
  sha256 "f62fbf188c107bf4063219f85b1123a53838c30644232ce72ff67a04183bd44d"

  url "https://github.com/cpektas/beacon/releases/download/v#{version}/Beacon-#{version}.dmg"
  name "Beacon"
  desc "See and return to Claude Code and Codex sessions from one calm corner"
  homepage "https://cpektas.github.io/beacon/"

  depends_on macos: :sonoma

  app "Beacon.app"

  zap trash: [
    "~/.claude/beacon",
    "~/Library/LaunchAgents/com.cempektas.beacon.plist",
    "~/Library/Preferences/com.cempektas.beacon.plist",
  ]
end
