cask "loopduck" do
  version "2026.5.2"
  sha256 "8aff4a82e681e5bc3bbcded8e49d14f8b0ec0556a454537cc0e15e6d02d7a3a6"

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
