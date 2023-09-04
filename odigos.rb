# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Odigos < Formula
  desc "Odigos CLI Utility"
  homepage "https://odigos.io"
  version "0.1.68"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/keyval-dev/odigos/releases/download/v0.1.68/cli_0.1.68_darwin_amd64.tar.gz"
      sha256 "6d9879b041ffb2c341e428cba34891215c190829e4cede130bce3ab718ca0fb2"

      def install
        bin.install "odigos"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/keyval-dev/odigos/releases/download/v0.1.68/cli_0.1.68_darwin_arm64.tar.gz"
      sha256 "d9f2d325e38c41461414414bb911f655e5b98fdbfeac8badb208cc777bb79cb1"

      def install
        bin.install "odigos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/keyval-dev/odigos/releases/download/v0.1.68/cli_0.1.68_linux_amd64.tar.gz"
      sha256 "bce11561d6098bfbb7d1b8a49cb46dab96ce319f729004f1d14e43e190b48a59"

      def install
        bin.install "odigos"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/keyval-dev/odigos/releases/download/v0.1.68/cli_0.1.68_linux_arm64.tar.gz"
      sha256 "b884adde195df1c7d8c69679e2219e6fbb24d56e8d5c669b8d68694c9fe80977"

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
