class Dc2 < Formula
  desc "Dave's (RPN) Calculator - simple RPN calculator for terminal"
  homepage "https://github.com/mastro35/dc2"
  url "https://github.com/mastro35/dc2/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "4af63bf6b829f8473ed34d3aeb275a2ac1d4355559610025aa34388734a13591"
  license "GPL-2.0-or-later"

  def install
    system ENV.cc, "dc2.c", "-o", "dc2", "-lm"
    bin.install "dc2"
    man1.install "dc2.1"
  end

  test do
    assert_match "x ->", shell_output("#{bin}/dc2", 1)
  end
end
