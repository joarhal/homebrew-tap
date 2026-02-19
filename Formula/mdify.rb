class Mdify < Formula
  desc "CLI tool that converts source directories into single Markdown snapshot files"
  homepage "https://github.com/joarhal/mdify"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/joarhal/mdify/releases/download/v0.1.0/mdify_0.1.0_darwin_amd64.tar.gz"
      sha256 "8bc106071d4e64bfedc49a24fd0ce02005623ef203e6b5697357629a3ff83da4"
    end
    if Hardware::CPU.arm?
      url "https://github.com/joarhal/mdify/releases/download/v0.1.0/mdify_0.1.0_darwin_arm64.tar.gz"
      sha256 "3d82d9bfb44ef0da0857df5242e33e12fb21b934a9861d78beb0be46d0d557d4"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/joarhal/mdify/releases/download/v0.1.0/mdify_0.1.0_linux_amd64.tar.gz"
      sha256 "d68dae70fc239eeebe958955d55fa8aaedc24395bcc2e259986a4dfb4a9fb6d7"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/joarhal/mdify/releases/download/v0.1.0/mdify_0.1.0_linux_arm64.tar.gz"
      sha256 "7ddcf6f9b4afd03d27a24f4d783490a0bf989a1c7ec544a91c7e6699c588f594"
    end
  end

  def install
    bin.install "mdify"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdify --version", 2)
  end
end
