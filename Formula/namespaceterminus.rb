class Namespaceterminus < Formula
    desc "Proof-of-concept terminus release dodges naming collisions"
    homepage "https://pantheon.io/terminus"
    license "MIT"
    url "https://github.com/namespacebrian/terminus/releases/download/3.0.0-alpha9/namespaceterminus.phar"
    sha256 "978625f72d9d3495cc6bd60a5d393196f152f401d6d1b649f6fd5e18a3ac51b9"
    version "3.0.0-alpha9"

    depends_on "php@7.4"
    depends_on "composer"
    depends_on "git"

    def install
        bin.install "namespaceterminus.phar" => "namespaceterminus"
    end

    test do
        system "#{bin}/namespaceterminus", "art"
    end
end
