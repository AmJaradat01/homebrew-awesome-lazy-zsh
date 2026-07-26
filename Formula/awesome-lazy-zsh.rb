class AwesomeLazyZsh < Formula
  desc "Comprehensive Zsh environment manager with 40+ plugins, themes, and profiles"
  homepage "https://github.com/AmJaradat01/awesome-lazy-zsh"
  url "https://github.com/AmJaradat01/awesome-lazy-zsh/archive/refs/tags/v3.5.0.tar.gz"
  sha256 "bca52134d683d438cb5ac9bd5ab0ec78ad2a5f80c14b05b4d268340f313c1813"
  license "MIT"

  depends_on "fzf"
  depends_on "git"
  depends_on "node"
  depends_on "starship"
  depends_on "zsh"

  def install
    libexec.install Dir["*"]

    cd libexec do
      system "npm", "install", *std_npm_args, "--ignore-scripts"
    end

    (bin/"awesome-lazy-zsh").write <<~EOS
      #!/bin/bash
      set -euo pipefail
      if [[ "${1:-}" == "--version" ]]; then
        exec "#{formula_opt_bin("node")}/node" -p "require('#{libexec}/package.json').version"
      fi
      exec "#{formula_opt_bin("node")}/node" "#{libexec}/src/index.js" "$@"
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awesome-lazy-zsh --version")
  end
end
