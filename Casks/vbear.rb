cask "vbear" do
  version "0.25.0"
  sha256 "1a9a83ef40007dd20f0c556886b3f006bfa30567403a53cdb7ee002e516c84a5"

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
