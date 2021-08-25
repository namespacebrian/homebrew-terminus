class T3 < Formula
    desc "Terminus is Pantheon's Command Line Interface (CLI), providing at least equivalent functionality to the Pantheon's browser-based Dashboard and easier scripting."
    homepage "https://pantheon.io/terminus"
    license "MIT"
    url "https://github.com/namespacebrian/terminus/releases/download/3.0.0-alpha15/t3"
    sha256 "1fe55027f6ce3a851e183c4066d6e63b90828aa7612f9e40707d62b64b9f57a7"
    version "3.0.0-alpha15"

    uses_from_macos "php"
    depends_on "composer"
    depends_on "git"

    def install
        bin.install "t3" => "t3"
    end

    test do
        system "#{bin}/t3", "art"
    end
end
