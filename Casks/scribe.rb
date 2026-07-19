cask "scribe" do
  version "1.0.0-beta.3"
  sha256 "1564ecd9ba6de10785ce42c3b1fb70950a0921206e46989ac978c60cb592120b"

  url "https://github.com/AgentC-Consulting/scribe-app/releases/download/v#{version}/Scribe-Installer.dmg"
  name "Scribe"
  desc "Free, on-device dictation app for macOS"
  homepage "https://github.com/AgentC-Consulting/scribe-app"

  livecheck do
    url "https://github.com/AgentC-Consulting/scribe-app/releases"
    strategy :github_releases
    regex(/^v?(\d+\.\d+\.\d+(?:-beta\.\d+)?)$/i)
  end

  depends_on macos: :ventura
  depends_on arch:  :arm64

  app "Scribe.app"

  zap trash: [
    "~/Library/Application Support/Scribe",
    "~/Library/Preferences/com.scribeapp.scribe.plist",
    "~/Library/Saved Application State/com.scribeapp.scribe.savedState",
  ]
end
