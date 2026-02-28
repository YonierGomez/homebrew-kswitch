class Kswitch < Formula
  desc "Interactive Kubernetes context switcher with arrow-key navigation"
  homepage "https://github.com/YonierGomez/kswitch"
  url "https://github.com/YonierGomez/kswitch/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "9d19abb8777f82c5aefffb715825917a8cfb9f1b364b5d3e1bc217ecf0e86a9b"
  license "MIT"

  depends_on "go" => :build
  depends_on "kubernetes-cli"

  def install
    system "go", "build", "-ldflags", "-s -w", "-o", bin/"ksw", "."
  end

  test do
    assert_match "ksw v#{version}", shell_output("#{bin}/ksw -v")
  end
end
