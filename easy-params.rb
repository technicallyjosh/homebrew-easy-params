# This file was generated by GoReleaser. DO NOT EDIT.
class EasyParams < Formula
  desc "Opinionated CLI for easy management of SSM Parameters."
  homepage "https://github.com/technicallyjosh/easy-params"
  version "0.4.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/technicallyjosh/easy-params/releases/download/v0.4.3/easy-params_0.4.3_Darwin_x86_64.tar.gz"
    sha256 "cdcfe273e1107c09bde7cc3cd3654aa247f58200e0aeb60c1d6a74bf265230b1"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/technicallyjosh/easy-params/releases/download/v0.4.3/easy-params_0.4.3_Linux_x86_64.tar.gz"
      sha256 "d9320f7140dbe4497f2e3db2c60d1034889f6576d5693e3740a59836340fd92d"
    end
  end

  def install
    bin.install "ezparams"
  end

  test do
    system "#{bin}/ezparams --version"
  end
end
