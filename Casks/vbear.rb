cask "vbear" do
  version "0.18.0"
  sha256 "398f6683ae8a6a98813e6201fec8e2fba4aba48e427aebf14edaafe20fac9521"

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
