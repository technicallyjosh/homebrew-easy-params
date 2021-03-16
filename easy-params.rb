# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class EasyParams < Formula
  desc "Opinionated CLI for easy management of SSM Parameters."
  homepage "https://github.com/technicallyjosh/easy-params"
  version "0.6.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/technicallyjosh/easy-params/releases/download/v0.6.0/easy-params_0.6.0_Darwin_x86_64.tar.gz"
    sha256 "93b6d8e8ca80d05cbe5de4d25790e1f834855636d4fe7d3821e917894383c618"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/technicallyjosh/easy-params/releases/download/v0.6.0/easy-params_0.6.0_Linux_x86_64.tar.gz"
    sha256 "f1a1dbeb56b59dee9e9ca1ba685aa2e3b3efe461247bbb46a73f9c7266c934ca"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/technicallyjosh/easy-params/releases/download/v0.6.0/easy-params_0.6.0_Linux_arm64.tar.gz"
    sha256 "a4bc2085f7c629a8401de252ead359586459f52466f0536911d3524d676c80e4"
  end

  def install
    bin.install "easy-params"
  end

  test do
    system "#{bin}/easy-params --version"
  end
end
