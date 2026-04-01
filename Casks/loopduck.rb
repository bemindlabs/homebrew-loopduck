cask "loopduck" do
  version "0.2.1"
  sha256 "917255c8d6772d12baaedd5cc4674f442c5952afc382e53b3ee94b0d8efb2d78"

  url "https://github.com/bemindlabs/loopduck-releases/releases/download/v#{version}/LoopDuck_#{version}_aarch64.dmg",
      verified: "github.com/bemindlabs/loopduck-releases/"
  name "LoopDuck"
  desc "AI Coding workflow desktop app"
  homepage "https://buildonclaw.cloud/products/loopduck"

  depends_on macos: ">= :ventura"

  app "LoopDuck.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/LoopDuck.app"],
                   sudo: true
  end

  zap trash: [
    "~/Library/Application Support/com.bemindlabs.loopduck",
    "~/Library/Caches/com.bemindlabs.loopduck",
    "~/Library/Preferences/com.bemindlabs.loopduck.plist",
    "~/Library/Saved Application State/com.bemindlabs.loopduck.savedState",
  ]
end
