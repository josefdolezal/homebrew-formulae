class Xcman < Formula
    desc "Xcode templates and snippets manager"
    homepage "https://github.com/josefdolezal/xcman"
    url "https://github.com/josefdolezal/xcman/archive/0.0.2.tar.gz"
    sha256 "27911b4f0c7eb6ec4b9550409eddfa84a60488f76af47c059af9ac88fe5305e2"
  
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