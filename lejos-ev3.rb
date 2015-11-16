class LejosEv3 < Formula
  url "https://downloads.sourceforge.net/ev3.lejos.p/0.9.1-beta/leJOS_EV3_0.9.1-beta.tar.gz"
  version "0.9.1-beta"
  homepage "http://www.lejos.org/"
  sha256 "37df3516ec99d0d219bdb7f5910a03c8c9727255c1e5adb34358c65e82fa658b"

  def install
    doc.install Dir["docs/*"]
    lib.install Dir["lib/*"]
    bin.install Dir["bin/*"]
  end

  test do
    system "#{bin}/ev3console", "-v"
  end
end
