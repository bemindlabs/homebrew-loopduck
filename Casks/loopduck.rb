cask "loopduck" do
  version "0.1.2"
  sha256 "6e3d4789a880ceb651e34d87a66d0256a871fb69f702a98506d98e48f9b2db05"

  url "file:///Users/lps/BemindLabs/build-on-openclaw/web-build-on-claw/public/products/loopduck/release/LoopDuck_0.1.2_developer-preview.dmg"
  name "LoopDuck"
  desc "AI Coding workflow desktop app"
  homepage "https://buildonclaw.cloud/products/loopduck"

  depends_on macos: ">= :ventura"

  app "LoopDuck.app"

  zap trash: [
    "~/Library/Application Support/com.bemindlabs.loopduck",
    "~/Library/Caches/com.bemindlabs.loopduck",
    "~/Library/Preferences/com.bemindlabs.loopduck.plist",
    "~/Library/Saved Application State/com.bemindlabs.loopduck.savedState",
  ]
end
