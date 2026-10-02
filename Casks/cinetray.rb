cask "cinetray" do
  version "1.1.0"
  sha256 "600f62610d04279bac33011bf482701334ff6b014078e88d438c265e29ea78bc"

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
