# This file was generated by GoReleaser. DO NOT EDIT.
class Walle < Formula
  desc ""
  homepage "https://aquaponics.ai"
  version "0.0.15"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/aquaponics-ai/walle-dist/releases/download/v0.0.15/walle_0.0.15_mac-os_x86_64.tar.gz"
    sha256 "8c00e165389e03e678fc9643be39197a0cb8a388cb4f26f60dfbd44265d7809c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/aquaponics-ai/walle-dist/releases/download/v0.0.15/walle_0.0.15_linux_x86_64.tar.gz"
    sha256 "a34e3c3a6c6f6bae4a40a3152bd354b59a595cbe41d0f9056bdda99cdd60561a"
  end

  def install
    bin.install "walle"
  end

  test do
    system "#{bin}/walle version"
  end
end
