class Ignorio < Formula
  desc "Gitignore.io command-line client written in Swift"
  homepage "https://github.com/josefdolezal/ignorio"
  url "https://github.com/josefdolezal/ignorio/archive/0.6.0.tar.gz"
  sha256 "2f4bf49a6359bc371505f65daae1c78c6f94df4c42681ac733b77effcdbd5edc"

  depends_on :xcode => ["10.2", :build]

  def install
    system "make", "release"
    bin.install ".build/release/ignorio"
  end

  test do
    system "#{bin}/ignorio"
  end
end
