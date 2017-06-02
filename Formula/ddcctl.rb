class Ddcctl < Formula
  desc "DDC monitor controls (brightness) for Mac OSX command line"
  homepage "https://github.com/kfix/ddcctl"
  url "https://github.com/kfix/ddcctl.git",
    :using => :git,
    :revision => "d11c3f4a63a090923b55ec93f363b381f2729d0c"
  version "60"
  sha256 "13445049825b1356a67c774167d14d1908c064458a28a4785e114070c15e6059"
  head "https://github.com/kfix/ddcctl.git"

  def install
    system "make", "ddcctl"
    bin.install "ddcctl"
    doc.install "README.md"
  end

  test do
    system "ddcctrl"
  end
end
