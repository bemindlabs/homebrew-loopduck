cask "loopduck" do
  version "0.1.4"
  sha256 "e073e4a0d36961a879217b886f97a17f50bb4ab5c14094ca51760c7b40237ca5"

  url "https://buildonclaw.cloud/products/loopduck/release/LoopDuck_#{version}_aarch64.dmg"
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
