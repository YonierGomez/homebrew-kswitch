class Kswitch < Formula
  desc "Interactive Kubernetes context switcher with arrow-key navigation"
  homepage "https://github.com/YonierGomez/kswitch"
  url "https://github.com/YonierGomez/kswitch/archive/refs/tags/v1.1.2.tar.gz"
  sha256 "79c7b4cade0ec33f70befb789d4cd1738afd828c813fa61c1d887710829792d8"
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
