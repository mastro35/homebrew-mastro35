class Luka < Formula
  desc "luka - a simple RPN calculator for terminal"
  homepage "https://github.com/mastro35/luka"
  url "https://github.com/mastro35/luka/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "c2689b19e9d051293426cb80d451c3fadbac58a40bec5606fc63945b45e37141"
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
