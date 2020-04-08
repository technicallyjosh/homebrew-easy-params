# This file was generated by GoReleaser. DO NOT EDIT.
class EasyParams < Formula
  desc "Opinionated CLI for easy management of SSM Parameters."
  homepage "https://github.com/technicallyjosh/easy-params"
  version "0.2.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/technicallyjosh/easy-params/releases/download/v0.2.1/easy-params_0.2.1_Darwin_x86_64.tar.gz"
    sha256 "b9b8ec8176eb01f3ec4e7b6b6b30c62eacb18a1ab879897e29495a857887dae0"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/technicallyjosh/easy-params/releases/download/v0.2.1/easy-params_0.2.1_Linux_x86_64.tar.gz"
      sha256 "20a38589c2f3d9790375e30db9d8bd032415ac2f5ae24b199d3f86251e08a0aa"
    end
  end

  def install
    bin.install "ezparams"
  end

  test do
    system "#{bin}/ezparams --version"
  end
end
