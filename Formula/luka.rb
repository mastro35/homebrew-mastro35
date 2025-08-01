class luka < Formula
  desc "luka - a simple RPN calculator for terminal"
  homepage "https://github.com/mastro35/luka"
  url "https://github.com/mastro35/luka/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "aa6881169141efa0d359f0fc920d869bca469f3e890930e35aedb607b610eed9"
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
