class Gitcut < Formula
    desc "Interactive branches manager for git"
    homepage "https://github.com/josefdolezal/gitcut"
    url "https://github.com/josefdolezal/gitcut/archive/0.0.1.tar.gz"
    sha256 "7d7c761fd4067803edcf07dd1f42e18a33c85e4dd972532245f4c0b23e3094bb"

    depends_on :xcode => ["10.0", :build]
  
    def install
      system "swift build --disable-sandbox -c release"
      mv ".build/release/gitcut", "git-cut"
      bin.install "git-cut"
    end
  
    test do
      system "#{bin}/gitcut"
    end
  end