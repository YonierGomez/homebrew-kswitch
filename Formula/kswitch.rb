class Kswitch < Formula
  desc "Interactive Kubernetes context switcher with arrow-key navigation"
  homepage "https://github.com/YonierGomez/kswitch"
  url "https://github.com/YonierGomez/kswitch/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "580959455b9e9be593ba30767b76db0436b7f75e42d2eeec1ca491713190be32"
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
