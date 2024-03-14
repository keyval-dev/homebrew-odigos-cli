# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Odigos < Formula
  desc "Odigos CLI Utility"
  homepage "https://odigos.io"
  version "1.0.48"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keyval-dev/odigos/releases/download/v1.0.48/cli_1.0.48_darwin_arm64.tar.gz"
      sha256 "f102b7c42a384395a560a68d6c79169ebd4e20d42512162f944ef82652696593"

      def install
        bin.install "odigos"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/keyval-dev/odigos/releases/download/v1.0.48/cli_1.0.48_darwin_amd64.tar.gz"
      sha256 "c707c835c1a6588d1732b68994f40967c1b75a807bd6366abb38cddf9ba5566f"

      def install
        bin.install "odigos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/keyval-dev/odigos/releases/download/v1.0.48/cli_1.0.48_linux_arm64.tar.gz"
      sha256 "06434d633e9807fdcecb547d12f74365a666d405b58b11bb44e82bed41f1dc50"

      def install
        bin.install "odigos"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/keyval-dev/odigos/releases/download/v1.0.48/cli_1.0.48_linux_amd64.tar.gz"
      sha256 "6dd7720851686b895c4fbb1f52405aba91cad695d201799b6506df1b4560876b"

      def install
        bin.install "odigos"
      end
    end
  end

  def caveats
    <<~EOS
      Thanks for installing Odigos CLI! Please run `odigos install` to install Odigos in your Kubernetes cluster.
    EOS
  end
end
