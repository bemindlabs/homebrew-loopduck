cask "loopduck" do
  version "0.1.3"
  sha256 "6e3d4789a880ceb651e34d87a66d0256a871fb69f702a98506d98e48f9b2db05"

  url "https://buildonclaw.cloud/products/loopduck/release/LoopDuck_#{version}_aarch64.dmg"
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
