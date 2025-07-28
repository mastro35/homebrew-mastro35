class Dc2 < Formula
  desc "Dave's (RPN) Calculator - simple RPN calculator for terminal"
  homepage "https://github.com/mastro35/dc2"
  url "https://github.com/mastro35/dc2/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "0c6132f3aaa0126bf379ec992161697b17de6b2de312e4b19d24b42c2b69abb8"
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
