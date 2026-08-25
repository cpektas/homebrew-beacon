cask "beacon" do
  version "0.12.4"
  sha256 "cd12b80a07531bafd57c2410a54b0942b5d2782019dfbcdc79bd0f9659a298cd"

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
