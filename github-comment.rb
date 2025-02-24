# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GithubComment < Formula
  desc "CLI to create and hide GitHub comments
"
  homepage "https://github.com/suzuki-shunsuke/github-comment"
  version "6.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/suzuki-shunsuke/github-comment/releases/download/v6.3.2/github-comment_6.3.2_darwin_amd64.tar.gz"
      sha256 "99b363ee8fa1c7ebb75a3f8fb401460f8e2e284ac066d7efd51cf11acd2f5689"

      def install
        bin.install "github-comment"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/suzuki-shunsuke/github-comment/releases/download/v6.3.2/github-comment_6.3.2_darwin_arm64.tar.gz"
      sha256 "a5160fc9038f3c80294b5c19ced485835a411fd2a7f29dd1a0da2f64ee3acd54"

      def install
        bin.install "github-comment"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/suzuki-shunsuke/github-comment/releases/download/v6.3.2/github-comment_6.3.2_linux_amd64.tar.gz"
        sha256 "433ac73ea420410e7a9721334a70f62fea28207e6fe1f803349771c49e803ec6"

        def install
          bin.install "github-comment"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/suzuki-shunsuke/github-comment/releases/download/v6.3.2/github-comment_6.3.2_linux_arm64.tar.gz"
        sha256 "4b4f8c185358ed18c31f070c1aa5711b0a16fd50a731a4e6e30c0ec8aa2a0a47"

        def install
          bin.install "github-comment"
        end
      end
    end
  end

  test do
    system "#{bin}/github-comment --version"
  end
end
