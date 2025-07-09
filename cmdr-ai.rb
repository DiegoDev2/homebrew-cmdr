class CmdrAi < Formula
    desc "AI-powered terminal copilot for automatic error fixing"
    homepage "https://github.com/DiegoDev2/cmdr.ai"
    url "https://github.com/DiegoDev2/cmdr.ai/archive/refs/tags/v1.0.1.tar.gz"
    sha256 "af1b73ca09f7fb14d7311692ec8eeea8560079cd171ccc1ab99fd093d8e16adb"
    license "MIT"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", "-o", bin/"cmdr.ai", "main.go"
    end
  
    test do
      system "#{bin}/cmdr.ai", "--help"
    end
  end
