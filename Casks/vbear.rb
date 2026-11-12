cask "vbear" do
  version "0.25.2"
  sha256 "c68aeb7e9b8a387cc4254474c2aca0b11d50f297f5bb14ae3f57bc0eeb0f6224"

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
