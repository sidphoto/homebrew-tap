cask "vbear" do
  version "0.6.0"
  sha256 "d24de18b1c192c506fa2d270d10142025ff3e33ca7076d1fc397f379bb7b13b2"

  url "https://github.com/sidphoto/vbear/releases/download/v#{version}/VBear-#{version}-arm64.dmg"
  name "VBear"
  desc "Local workbench for running and supervising coding agents"
  homepage "https://github.com/sidphoto/vbear"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "VBear.app"

  zap trash: "~/.vbear"

  caveats <<~EOS
    VBear is not signed with an Apple Developer ID yet. If macOS refuses to open it,
    open System Settings > Privacy & Security and click "Open Anyway" next to VBear.
  EOS
end
