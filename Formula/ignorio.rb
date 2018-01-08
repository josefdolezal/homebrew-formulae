class Ignorio < Formula
  desc "Gitignore.io command-line client written in Swift"
  homepage "https://github.com/josefdolezal/ignorio"
  url "https://github.com/josefdolezal/ignorio/archive/0.5.2.tar.gz"
  sha256 "df55c300e35e6e1877c0b9ec4ddea008f8f681d154cc4f471ab6c81c21aad4a3"

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
