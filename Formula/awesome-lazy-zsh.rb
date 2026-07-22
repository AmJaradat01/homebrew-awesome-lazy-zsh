class AwesomeLazyZsh < Formula
  desc "Comprehensive Zsh environment manager with 40+ plugins, themes, and profiles"
  homepage "https://github.com/AmJaradat01/awesome-lazy-zsh"
  url "https://github.com/AmJaradat01/awesome-lazy-zsh/archive/refs/tags/v3.3.0.tar.gz"
  sha256 "61bde2ab3c53b0a308cfc073a6bfe5d82dde75104f8d795f1816f36b6c75fbdf"
  license "MIT"

  depends_on "git"
  depends_on "node"

  def install
    libexec.install Dir["*"]

    (bin/"awesome-lazy-zsh").write <<~EOS
      #!/bin/bash
      cd "#{libexec}" && exec ./setup.sh "$@"
    EOS
  end

  test do
    assert_path_exists bin/"awesome-lazy-zsh"
    assert_predicate bin/"awesome-lazy-zsh", :executable?
  end
end
