cask "cinetray" do
  version "2026.10.01"
  sha256 "4b1cf817708d2ea88910bf17442a05fb1e6e0d0943e1f8fa95a1cd88bd25578a"

  url "https://github.com/p3rception/CineTray/releases/download/v#{version}/CineTray.zip"
  name "CineTray"
  desc "Menu bar player for Plex, Jellyfin, Navidrome and local media"
  homepage "https://github.com/p3rception/CineTray"

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "CineTray.app"

  caveats <<~EOS
    CineTray is not notarized. On first launch, open System Settings >
    Privacy & Security and click Open Anyway.
  EOS
end
