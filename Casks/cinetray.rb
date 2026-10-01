cask "cinetray" do
  version "1.0.0"
  sha256 "6a61769e93726219192c4a850935451799c1139559baf88a4cf7d2740d847656"

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
