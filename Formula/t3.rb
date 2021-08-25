class T3 < Formula
  desc "Terminus is Pantheon's Command-line Interface (CLI)"
  homepage "https://pantheon.io/terminus"
  url "https://github.com/namespacebrian/terminus/releases/download/3.0.0-alpha12/t3"
  license "MIT"
  sha256 "eb98a4328b128e4fe734de17e101f77c7c5a67692f2a7a02267fc0ac76fc4fb0"
  version "3.0.0-alpha12"

  uses_from_macos "php"

  def install
    bin.install "t3" => "t3"
  end

  test do
    system "#{bin}/t3", "art"
  end
end
