class Luka < Formula
  desc "luka - a simple RPN calculator for terminal"
  homepage "https://github.com/mastro35/luka"
  url "https://github.com/mastro35/luka/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "74349e95bc8784518102c6439ce73cf69ca8ec7fb1d69cfd8e008f41f625e29b"
  license "GPL-2.0"

  def install
    system ENV.cc, "luka.c", "-o", "luka", "-lm"
    bin.install "luka"
    man1.install "luka.1"
  end

  test do
    assert_match "x ->", shell_output("#{bin}/luka", 1)
  end
end
