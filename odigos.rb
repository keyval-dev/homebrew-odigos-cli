# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Odigos < Formula
  desc "Odigos CLI Utility"
  homepage "https://odigos.io"
  version "1.0.14"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/keyval-dev/odigos/releases/download/v1.0.14/cli_1.0.14_darwin_amd64.tar.gz"
      sha256 "2b9300e3eac579835feed2db19d841bb8e985ce4c523793cfb5926c72dd63d9b"

      def install
        bin.install "odigos"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/keyval-dev/odigos/releases/download/v1.0.14/cli_1.0.14_darwin_arm64.tar.gz"
      sha256 "5b76dc4316541d450d3bbe05b325d72f87cf49199aaafec1a40d1701ecd9bfa3"

      def install
        bin.install "odigos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/keyval-dev/odigos/releases/download/v1.0.14/cli_1.0.14_linux_arm64.tar.gz"
      sha256 "810d83b2c3465289f65f0c764faff8818ada9fb5cc00607da5510f1457b3642c"

      def install
        bin.install "odigos"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/keyval-dev/odigos/releases/download/v1.0.14/cli_1.0.14_linux_amd64.tar.gz"
      sha256 "f328b763ac30af5afc11404fb4d7d4aca16f0c4fb564fcf6c36480924b602f25"

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
