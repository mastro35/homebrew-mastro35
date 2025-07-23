class Dc2 < Formula
  desc "Dave's (RPN) Calculator - simple RPN calculator for terminal"
  homepage "https://github.com/mastro35/dc2"
  url "https://github.com/mastro35/dc2/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "<INSERISCI_SHA256_DEL_TAR_GZ>"
  license "GPL-2.0-or-later"

  def install
    system ENV.cc, "dc2.c", "-o", "dc2", "-lm"
    bin.install "dc2"
  end

  test do
    assert_match "x ->", shell_output("#{bin}/dc2", 1)
  end
end
