class Anvi < Formula
  desc "Terminal-native AI coding agent built in Rust"
  homepage "https://github.com/eagleisbatman/anvi"
  license "Apache-2.0"
  head "https://github.com/eagleisbatman/anvi.git", branch: "main"

  # Stable release - update these URLs and checksums when cutting a release
  # url "https://github.com/eagleisbatman/anvi/archive/refs/tags/v1.0.0.tar.gz"
  # sha256 "UPDATE_WITH_ACTUAL_SHA256"
  # version "1.0.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/anvi-tui")
  end

  test do
    assert_match "anvi", shell_output("#{bin}/anvi --version")
  end
end
