# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mkghtag < Formula
  desc "Create GitHub Tags via API"
  homepage "https://github.com/suzuki-shunsuke/mkghtag"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/suzuki-shunsuke/mkghtag/releases/download/v0.1.5/mkghtag_darwin_amd64.tar.gz"
      sha256 "e323366f0ca21e45e9396f6f2343aeb2553f2d3055020cd13f7aa2192b0dce95"

      def install
        bin.install "mkghtag"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/suzuki-shunsuke/mkghtag/releases/download/v0.1.5/mkghtag_darwin_arm64.tar.gz"
      sha256 "0fd97c9769fcdc98aea3fae476be9183f172d506d17d26e37201432d8a90cac5"

      def install
        bin.install "mkghtag"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/suzuki-shunsuke/mkghtag/releases/download/v0.1.5/mkghtag_linux_amd64.tar.gz"
        sha256 "1e5f5457cd26641565c4ee299cdeda90bbbe3dacab65c17b1648dd03e9d82654"

        def install
          bin.install "mkghtag"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/suzuki-shunsuke/mkghtag/releases/download/v0.1.5/mkghtag_linux_arm64.tar.gz"
        sha256 "bc90653cafcc4b430177c91238a566fefc800872fc81205d6e3a6d83ecdc0869"

        def install
          bin.install "mkghtag"
        end
      end
    end
  end

  test do
    system "#{bin}/mkghtag --version"
  end
end
