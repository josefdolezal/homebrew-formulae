class Xcman < Formula
    desc "Xcode templates and snippets manager"
    homepage "https://github.com/josefdolezal/xcman"
    url "https://github.com/josefdolezal/xcman/archive/0.0.1.tar.gz"
    sha256 "5b1a3fc8863bea03605d28a0eb17f8a0ae358cb3e06157aa02116c54f29ede06"
  
    depends_on "cmake" => :build
    depends_on :xcode => ["9.0", :build]
  
    def install
      system "make", "release"
      bin.install ".build/release/xcman"
    end
  
    test do
      system "#{bin}/xcman"
    end
  end