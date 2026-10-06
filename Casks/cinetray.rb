cask "cinetray" do
  version "1.2.0"
  sha256 "5127e9bd08ee5e22a1125b5978d6151384b0e64f1e0c5795e6b7ed7d7f8ab531"

  url "https://github.com/p3rception/CineTray/releases/download/v#{version}/CineTray.zip"
  name "CineTray"
  desc "Menu bar player for Plex, Jellyfin, Navidrome and local media"
  homepage "https://github.com/p3rception/CineTray"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "CineTray.app"

  caveats <<~EOS
    CineTray is not notarized. On first launch, open System Settings >
    Privacy & Security and click Open Anyway.
  EOS
end
