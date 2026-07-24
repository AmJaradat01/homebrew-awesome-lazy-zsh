class AwesomeLazyZsh < Formula
  desc "Comprehensive Zsh environment manager with 40+ plugins, themes, and profiles"
  homepage "https://github.com/AmJaradat01/awesome-lazy-zsh"
  url "https://github.com/AmJaradat01/awesome-lazy-zsh/archive/refs/tags/v3.4.3.tar.gz"
  sha256 "71b930f4f3f573c56b7d364eef15f816335c4d0aea3a3e08f1dee3ce24255e0c"
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
