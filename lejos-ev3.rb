class LejosEv3 < Formula
  url "https://downloads.sourceforge.net/lejos/lejos-EV3/0.9.0-beta/leJOS_EV3_0.9.0-beta.tar.gz"
  version "0.9.0-beta"
  homepage "http://www.lejos.org/"
  sha256 "d916952a53f18fcd569e651cb77a3fb1af7c0ac85f8116d4981c0f26d69d5f96"

  def install
    doc.install Dir["docs/*"]
    lib.install Dir["lib/*"]
    bin.install Dir["bin/*"]
  end

  test do
    system "#{bin}/ev3console", "-v"
  end
end
