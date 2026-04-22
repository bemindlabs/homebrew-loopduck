cask "loopduck" do
  version "2026.4.22"
  sha256 "94668924890714ba7d45326976b26f28ebd95afa9f32772f1beed2763b2e6580"

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
