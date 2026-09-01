cask "beacon" do
  version "0.13.2"
  sha256 "301fd1c34f5d74d4427ab9280cd526646907f7e46766ed6bf9bbc1e9ab333ac9"

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
