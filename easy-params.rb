# This file was generated by GoReleaser. DO NOT EDIT.
class EasyParams < Formula
  desc "Opinionated CLI for easy management of SSM Parameters."
  homepage "https://github.com/technicallyjosh/easy-params"
  version "0.4.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/technicallyjosh/easy-params/releases/download/v0.4.2/easy-params_0.4.2_Darwin_x86_64.tar.gz"
    sha256 "76036ef1e21dbde7312a916e920801b6f746e34d92a9355ed35e70c939d9c6d2"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/technicallyjosh/easy-params/releases/download/v0.4.2/easy-params_0.4.2_Linux_x86_64.tar.gz"
      sha256 "4d57ceae9fea6b895c46e678c6d10b0346f76bdc14b660c80ef4d8b4c58b560e"
    end
  end

  def install
    bin.install "ezparams"
  end

  test do
    system "#{bin}/ezparams --version"
  end
end
