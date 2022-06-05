# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool."
  homepage "https://github.com/odpf/guardian"
  version "0.2.8"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/odpf/guardian/releases/download/v0.2.8/guardian_0.2.8_macos_x86_64.tar.gz"
      sha256 "638b5a104f52579974c7a0c5c52dafa7d992cf8da7926fb6540bb1d3a7a45861"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/odpf/guardian/releases/download/v0.2.8/guardian_0.2.8_macos_arm64.tar.gz"
      sha256 "efe100e3cce536a2d889c2ce6943e8accce08c3b130c98fd59354e0b15cf79bf"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/odpf/guardian/releases/download/v0.2.8/guardian_0.2.8_linux_x86_64.tar.gz"
      sha256 "be1c3f326b54cbe26103afe2dcf4ff02427557408cc77dc96b9eebae2b5c53a2"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/odpf/guardian/releases/download/v0.2.8/guardian_0.2.8_linux_arm64.tar.gz"
      sha256 "1c0167f4ab559dd116785427583340fd027ba877f7fc2f17d0ffafdc3b0501eb"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/odpf/guardian/releases/download/v0.2.8/guardian_0.2.8_linux_armv6.tar.gz"
      sha256 "bc1dfdf220bce316f11ecb5045211710921a2dc5ad97665aa9be28b3366c53b7"

      def install
        bin.install "guardian"
      end
    end
  end

  depends_on "git"
end
