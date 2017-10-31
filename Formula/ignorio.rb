class Ignorio < Formula
  desc "Gitignore.io command-line client written in Swift"
  homepage "https://github.com/josefdolezal/ignorio"
  url "https://github.com/josefdolezal/ignorio/archive/0.5.1.tar.gz"
  sha256 "e5eede644273246032ed68a31cf2b1640f8207c5543954ff5dd8e77f153727bb"

  depends_on "cmake" => :build
  depends_on :xcode => ["9.0", :build]

  def install
    system "make", "release"
    bin.install ".build/release/ignorio"
  end

  test do
    system "#{bin}/ignorio"
  end
end
