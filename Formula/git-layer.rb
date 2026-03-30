class GitLayer < Formula
  desc "Manage .git/info/exclude so personal AI files stay out of git"
  homepage "https://github.com/aungsiminhtet/git-layer"
  version "0.1.7"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/aungsiminhtet/git-layer/releases/download/v0.1.7/git-layer-aarch64-apple-darwin.tar.xz"
      sha256 "08081347ac54310728097f8bf9946d1b11d3ddbcf5af5db30c48abe95ad06915"
    end

    on_intel do
      url "https://github.com/aungsiminhtet/git-layer/releases/download/v0.1.7/git-layer-x86_64-apple-darwin.tar.xz"
      sha256 "9ff79b40151f3a5fb2002bccb3bfca3c93812cc8ce5eee4e7885bb974af064bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aungsiminhtet/git-layer/releases/download/v0.1.7/git-layer-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "109433ea810acdecb66554dec02ac47e25f7b941840669f26a0028a34a97c585"
    end

    on_intel do
      url "https://github.com/aungsiminhtet/git-layer/releases/download/v0.1.7/git-layer-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "61b28b9f0f403ed53aae6f5c522f7b1568a87975e7e96817f6283f4aa7d3a331"
    end
  end

  def install
    bin.install "layer", "git-layer"
    doc.install "README.md"
  end

  test do
    assert_match "Manage .git/info/exclude", shell_output("#{bin}/layer --help")
  end
end
