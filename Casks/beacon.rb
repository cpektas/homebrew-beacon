cask "beacon" do
  version "0.12.3"
  sha256 "5ce7a60600832105ea7b2851c73cadf4613a8a664141a3010a258882de5b8bdc"

  url "https://github.com/cpektas/beacon/releases/download/v#{version}/Beacon-#{version}.dmg"
  name "Beacon"
  desc "See and return to Claude Code and Codex sessions from one calm corner"
  homepage "https://cpektas.github.io/beacon/"

  depends_on macos: :sonoma

  app "Beacon.app"

  zap trash: [
    "~/Library/LaunchAgents/com.cempektas.beacon.plist",
    "~/Library/Preferences/com.cempektas.beacon.plist",
    "~/.claude/beacon",
  ]
end
