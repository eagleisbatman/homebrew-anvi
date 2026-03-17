class Anvi < Formula
  desc "Terminal-native AI coding agent built in Rust"
  homepage "https://github.com/eagleisbatman/anvi"
  license "Apache-2.0"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/eagleisbatman/anvi-releases/releases/latest/download/anvi-aarch64-apple-darwin.tar.gz"
      # sha256 "UPDATE_AFTER_FIRST_RELEASE"
    else
      url "https://github.com/eagleisbatman/anvi-releases/releases/latest/download/anvi-x86_64-apple-darwin.tar.gz"
      # sha256 "UPDATE_AFTER_FIRST_RELEASE"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eagleisbatman/anvi-releases/releases/latest/download/anvi-aarch64-unknown-linux-gnu.tar.gz"
      # sha256 "UPDATE_AFTER_FIRST_RELEASE"
    else
      url "https://github.com/eagleisbatman/anvi-releases/releases/latest/download/anvi-x86_64-unknown-linux-gnu.tar.gz"
      # sha256 "UPDATE_AFTER_FIRST_RELEASE"
    end
  end

  def install
    bin.install "anvi"
  end

  test do
    assert_match "anvi", shell_output("#{bin}/anvi --version")
  end
end
