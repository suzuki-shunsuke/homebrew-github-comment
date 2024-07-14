# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GithubComment < Formula
  desc "CLI to create and hide GitHub comments
"
  homepage "https://github.com/suzuki-shunsuke/github-comment"
  version "6.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/suzuki-shunsuke/github-comment/releases/download/v6.1.0/github-comment_6.1.0_darwin_amd64.tar.gz"
      sha256 "ec43efe9fbe0e8ac5bbb0e4a6798f9fe1fcc3dcdde7bf6ba654741462fea5640"

      def install
        bin.install "github-comment"
      end
    end
    on_arm do
      url "https://github.com/suzuki-shunsuke/github-comment/releases/download/v6.1.0/github-comment_6.1.0_darwin_arm64.tar.gz"
      sha256 "3d49878707e54189f759a0182ab760dbe487e5f5b4ac9d57360812ef9c179673"

      def install
        bin.install "github-comment"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/suzuki-shunsuke/github-comment/releases/download/v6.1.0/github-comment_6.1.0_linux_amd64.tar.gz"
        sha256 "1707e76835e649690ae2767ac667703d6682f41f6dc6c50744d6a661375549c1"

        def install
          bin.install "github-comment"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/suzuki-shunsuke/github-comment/releases/download/v6.1.0/github-comment_6.1.0_linux_arm64.tar.gz"
        sha256 "b91680074d1fee3c3d18c4030bb38f16c568016265f045898e0eebb4e36f3c34"

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
