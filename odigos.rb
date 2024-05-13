# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Odigos < Formula
  desc "Odigos CLI Utility"
  homepage "https://odigos.io"
  version "1.0.60"

  on_macos do
    on_intel do
      url "https://github.com/odigos-io/odigos/releases/download/v1.0.60/cli_1.0.60_darwin_amd64.tar.gz"
      sha256 "9fa0503b830059211d8883eaf6715d2a7f3400a80a446829d66583b14950dcb6"

      def install
        bin.install "odigos"
      end
    end
    on_arm do
      url "https://github.com/odigos-io/odigos/releases/download/v1.0.60/cli_1.0.60_darwin_arm64.tar.gz"
      sha256 "9f9b623762a295cfb546f00a04b5f2e5afc95eb65eaed16e12c2680aae778ad2"

      def install
        bin.install "odigos"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/odigos-io/odigos/releases/download/v1.0.60/cli_1.0.60_linux_amd64.tar.gz"
        sha256 "dfc92af787e533fc1c25a71d453fd5407b1d685655e3343f86a39c9e6ee7598a"

        def install
          bin.install "odigos"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/odigos-io/odigos/releases/download/v1.0.60/cli_1.0.60_linux_arm64.tar.gz"
        sha256 "4c7d00bde4b7aaaaef576cbfabe96ff8cc665aa35e2fb8e07899ed527ee8eb89"

        def install
          bin.install "odigos"
        end
      end
    end
  end

  def caveats
    <<~EOS
      Thanks for installing Odigos CLI! Please run `odigos install` to install Odigos in your Kubernetes cluster.
    EOS
  end
end
