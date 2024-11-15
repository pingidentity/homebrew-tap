# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pingcli < Formula
  desc "The Ping CLI is a unified command line interface for configuring and managing Ping Identity Services."
  homepage "https://github.com/pingidentity/pingcli"
  version "0.1.0"
  license "Apache License 2.0"

  on_macos do
    on_intel do
      url "https://github.com/pingidentity/pingcli/releases/download/v0.1.0/pingcli_0.1.0_darwin_amd64.tar.gz"
      sha256 "1f218710d96c0b8fc2e0ac0243603b69fd8a9421d566fa1c1c644f38141cdf46"

      def install
        bin.install "pingcli"
      end
    end
    on_arm do
      url "https://github.com/pingidentity/pingcli/releases/download/v0.1.0/pingcli_0.1.0_darwin_arm64.tar.gz"
      sha256 "c17416e1062cab21eaf6b26e6ff478792482eeb9ce4cf8f4b47c6086a72e0437"

      def install
        bin.install "pingcli"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pingidentity/pingcli/releases/download/v0.1.0/pingcli_0.1.0_linux_amd64.tar.gz"
        sha256 "99274f95b48a25d09cf995f0cf48fa881faeaea3c89c6934a1be5e357f737578"

        def install
          bin.install "pingcli"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pingidentity/pingcli/releases/download/v0.1.0/pingcli_0.1.0_linux_arm64.tar.gz"
        sha256 "7eddade5672bbb1a17d5ec326addc0384010015d19e99c2b5c3dc1cfd5c9d3d9"

        def install
          bin.install "pingcli"
        end
      end
    end
  end
end
