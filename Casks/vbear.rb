cask "vbear" do
  version "0.2.0"
  sha256 "d13b34ee5bae8760dfceaea46cb00a84f1a85a1c2453257e91c2f552d743cece"

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
