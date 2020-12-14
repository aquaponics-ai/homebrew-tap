# This file was generated by GoReleaser. DO NOT EDIT.
class Walle < Formula
  desc ""
  homepage "https://aquaponics.ai"
  version "0.0.12"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/aquaponics-ai/walle-dist/releases/download/v0.0.12/walle_0.0.12_mac-os_x86_64.tar.gz"
    sha256 "6a1ae1280dda68b5aed88609cb5246a8e62f7884f4543c6295407286a5d3c6c6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/aquaponics-ai/walle-dist/releases/download/v0.0.12/walle_0.0.12_linux_x86_64.tar.gz"
    sha256 "4dcc592ce958dc1a587e687953f13918540f776faab55a6cc52b79ae82898e0a"
  end

  def install
    bin.install "walle"
  end

  test do
    system "#{bin}/walle version"
  end
end
