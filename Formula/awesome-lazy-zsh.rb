class AwesomeLazyZsh < Formula
  desc "Comprehensive Zsh environment manager with 40+ plugins, themes, and profiles"
  homepage "https://github.com/AmJaradat01/awesome-lazy-zsh"
  url "https://github.com/AmJaradat01/awesome-lazy-zsh/archive/refs/tags/v3.5.2.tar.gz"
  sha256 "f5e4582e099f6dcb7532e4a02276cd3b33bb106e36fa71a7f13fef9037760b24"
  license "MIT"

  depends_on "fzf"
  depends_on "git"
  depends_on "node"
  depends_on "starship"
  depends_on "zsh"

  def install
    libexec.install Dir["*"]

    cd libexec do
      system "npm", "install", *std_npm_args(prefix: false)
    end

    (bin/"awesome-lazy-zsh").write <<~EOS
      #!/bin/bash
      set -euo pipefail
      if [[ "${1:-}" == "--version" ]]; then
        exec "#{Formula["node"].opt_bin}/node" -p "require('#{libexec}/package.json').version"
      fi
      exec "#{Formula["node"].opt_bin}/node" "#{libexec}/src/index.js" "$@"
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awesome-lazy-zsh --version")
  end
end
