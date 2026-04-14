cask "loopduck" do
  version "2026.4.14"
  sha256 "12fca615007b91f071b40f2c9ce03b9729fd8ab3a2a25901c869b96df1d05dee"

  url "https://github.com/bemindlabs/loopduck-releases/releases/download/v#{version}/LoopDuck_#{version}_aarch64.dmg"
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
