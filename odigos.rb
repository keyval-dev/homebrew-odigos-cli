# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Odigos < Formula
  desc "Odigos CLI Utility"
  homepage "https://odigos.io"
  version "1.0.54"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/keyval-dev/odigos/releases/download/v1.0.54/cli_1.0.54_darwin_amd64.tar.gz"
      sha256 "5035729333f8560a9025e54e362e257d15afa9fd9e432edf27ce3feeefbda21a"

      def install
        bin.install "odigos"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/keyval-dev/odigos/releases/download/v1.0.54/cli_1.0.54_darwin_arm64.tar.gz"
      sha256 "7d00a09c7db4baf461405a897b379c71e09129a2db654612927d0c606aa5f9b5"

      def install
        bin.install "odigos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/keyval-dev/odigos/releases/download/v1.0.54/cli_1.0.54_linux_amd64.tar.gz"
      sha256 "8564388d16af9350600bc801866e509f833f777209f3db733788decd30a95ba6"

      def install
        bin.install "odigos"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/keyval-dev/odigos/releases/download/v1.0.54/cli_1.0.54_linux_arm64.tar.gz"
      sha256 "3fe9841aad68aa0815a15a1dbc8d7b839432ea2eef14b2731c8d673e4681421d"

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
