# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class EasyParams < Formula
  desc "Opinionated CLI for easy management of SSM Parameters."
  homepage "https://github.com/technicallyjosh/easy-params"
  version "0.6.2"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/technicallyjosh/easy-params/releases/download/v0.6.2/easy-params_0.6.2_Darwin_x86_64.tar.gz"
    sha256 "ecb12d57b6145149d9109b46cb04003b562b20570fd56ff1b6165c6b4a2eef41"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/technicallyjosh/easy-params/releases/download/v0.6.2/easy-params_0.6.2_Darwin_arm64.tar.gz"
    sha256 "d70d64c8c6feacc27da20ff5453313c7371060a5eb9d6d1114958394edc23baa"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/technicallyjosh/easy-params/releases/download/v0.6.2/easy-params_0.6.2_Linux_x86_64.tar.gz"
    sha256 "d86ca5cbf6976ed53cf9df770067260792ab7f7a53ec772951f5141fc1b040bd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/technicallyjosh/easy-params/releases/download/v0.6.2/easy-params_0.6.2_Linux_arm64.tar.gz"
    sha256 "6d9d86004aec59c1c927990a4faf1cb32517e93e28a08dbcda6d87c4637d8c87"
  end

  def install
    bin.install "easy-params"
  end

  test do
    system "#{bin}/easy-params --version"
  end
end
