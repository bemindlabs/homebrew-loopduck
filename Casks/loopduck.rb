cask "loopduck" do
  version "0.1.4"
  sha256 "fe211d79e85feec7714955b9b45ac80bfaa2d802ad7a309501164580d8d7cd10"

  url "https://buildonclaw.cloud/products/loopduck/release/LoopDuck_#{version}_aarch64.pkg"
  name "LoopDuck"
  desc "AI Coding workflow desktop app"
  homepage "https://buildonclaw.cloud/products/loopduck"

  depends_on macos: ">= :ventura"

  pkg "LoopDuck_#{version}_aarch64.pkg"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/LoopDuck.app"],
                   sudo: true
  end

  uninstall pkgutil: "com.bemindlabs.loopduck"

  zap trash: [
    "~/Library/Application Support/com.bemindlabs.loopduck",
    "~/Library/Caches/com.bemindlabs.loopduck",
    "~/Library/Preferences/com.bemindlabs.loopduck.plist",
    "~/Library/Saved Application State/com.bemindlabs.loopduck.savedState",
  ]
end
