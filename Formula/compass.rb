# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Compass < Formula
  desc "Metadata Discovery and Lineage Service"
  homepage "https://github.com/odpf/compass"
  version "0.2.3"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/odpf/compass/releases/download/v0.2.3/compass_0.2.3_macos_x86_64.tar.gz"
      sha256 "535d0d3689dfd08a8f8af1c7af4c5ddde0041dcc8c01fa4cf4f53156ee8b2c43"

      def install
        bin.install "compass"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/odpf/compass/releases/download/v0.2.3/compass_0.2.3_macos_arm64.tar.gz"
      sha256 "2a28805b90ba07cb94a819831777fb90e50b54a317042c7b20fe97c471a064db"

      def install
        bin.install "compass"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/odpf/compass/releases/download/v0.2.3/compass_0.2.3_linux_arm64.tar.gz"
      sha256 "728a2cf8168ed1a21346a7dea27633fd3aefa533402b65659f99df6a1d0f7bec"

      def install
        bin.install "compass"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/odpf/compass/releases/download/v0.2.3/compass_0.2.3_linux_armv6.tar.gz"
      sha256 "be3ddaade481286187d96b54c4b83abe96f16930ca0d3ca94ba1d91b40edc4f3"

      def install
        bin.install "compass"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/odpf/compass/releases/download/v0.2.3/compass_0.2.3_linux_x86_64.tar.gz"
      sha256 "629b50b16b67de4175ab0ccd3ac1d72e490c78f357c5a346cfc095a207eeecbb"

      def install
        bin.install "compass"
      end
    end
  end

  depends_on "git"
end
