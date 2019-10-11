class GitCut < Formula
    desc "Interactive branches manager for git"
    homepage "https://github.com/josefdolezal/git-cut"
    url "https://github.com/josefdolezal/git-cut/archive/0.0.2.tar.gz"
    sha256 "9103fad6d9bb28b842b5c7d11f2d67d230acce178646bb18b7d3bd64c0cb69d3"

    depends_on :xcode => ["10.0", :build]

    def install
      system "swift build --disable-sandbox -c release"
      bin.install ".build/release/git-cut"
    end

    test do
      system "#{bin}/git-cut"
    end
  end