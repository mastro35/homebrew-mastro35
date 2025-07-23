class Dc2 < Formula
  desc "Dave's (RPN) Calculator - simple RPN calculator for terminal"
  homepage "https://github.com/mastro35/dc2"
  url "https://github.com/mastro35/dc2/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "f0c1bf679fca21f00233473b517c5e5f5b029d83cca99201f904615f9f4a9e78"
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
