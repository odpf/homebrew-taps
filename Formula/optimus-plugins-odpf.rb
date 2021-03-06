# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OptimusPluginsOdpf < Formula
  desc "Optimus Plugins for warehouse"
  homepage ""
  version "0.1.1"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/odpf/transformers/releases/download/v0.1.1/transformers_0.1.1_macos_x86_64.tar.gz"
      sha256 "c90307d65de761e9d1f926f6d0f249c6f484de87a45525638d94899f2b75d17e"

      def install
        bin.install Dir["optimus-*"]
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/odpf/transformers/releases/download/v0.1.1/transformers_0.1.1_macos_arm64.tar.gz"
      sha256 "13197f05be5ac309cc38758050b934113ca2423a4c01a7d1b418acfdf0c1185b"

      def install
        bin.install Dir["optimus-*"]
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/odpf/transformers/releases/download/v0.1.1/transformers_0.1.1_linux_arm64.tar.gz"
      sha256 "f67f603af4c81d523bc2ea8e571beaad24d83fee836b6e07e694c0805cdcfe2c"

      def install
        bin.install Dir["optimus-*"]
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/odpf/transformers/releases/download/v0.1.1/transformers_0.1.1_linux_x86_64.tar.gz"
      sha256 "fb433c1ba7ed0ee66a0cb95ee95cede4f1ff9ebe04be6f834f478f23e1e88845"

      def install
        bin.install Dir["optimus-*"]
      end
    end
  end

  depends_on "odpf/taps/optimus"
end
