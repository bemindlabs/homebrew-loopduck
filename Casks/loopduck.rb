cask "loopduck" do
  version "0.2.0"
  sha256 "c1c8c77ce76c3a1d90efc4d0faa0fa64a123321dde19c431c44fce472248bbc7"

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
