cask "butterfly" do
  version "1.22.4"
  sha256 "abe517a036c14843efc7630552f28ed18ebd044e0c501e6096020938ccbfb789"

  url "https://github.com/butterflyformac/releases/releases/download/v#{version}/Butterfly-#{version}.zip",
      verified: "github.com/butterflyformac/releases/"
  name "Butterfly for Mac"
  desc "Scrolling tiling window manager"
  homepage "https://butterflyformac.com/"

  livecheck do
    url "https://updates.butterflyformac.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Butterfly.app"

  zap trash: [
    "~/Library/Application Support/Butterfly",
    "~/Library/Logs/Butterfly",
    "~/Library/Preferences/com.butterflyformac.butterfly.plist",
  ]
end
