class Kswitch < Formula
  desc "Interactive Kubernetes context switcher with arrow-key navigation"
  homepage "https://github.com/YonierGomez/kswitch"
  url "https://github.com/YonierGomez/kswitch/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "1dfe7a29b33227260678fe2192f4fe1f4a2246c7c0d84ef742f8923ac63134e4"
  license "MIT"

  depends_on "go" => :build
  depends_on "kubernetes-cli"

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "."
  end

  test do
    assert_match "kswitch v#{version}", shell_output("#{bin}/kswitch -v")
  end
end
