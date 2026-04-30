# typed: false
# frozen_string_literal: true

class Nomadl < Formula
  desc "Terminal UI for browsing Nomad services and tailing task logs"
  homepage "https://github.com/rselbach/nomadl"
  version "0.0.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rselbach/nomadl/releases/download/v#{version}/nomadl-#{version}-darwin-amd64.zip"
      sha256 "5155c41e9502f006c7b565401e2b030c3005da1a761123de503d64bba9da860d"
    end

    if Hardware::CPU.arm?
      url "https://github.com/rselbach/nomadl/releases/download/v#{version}/nomadl-#{version}-darwin-arm64.zip"
      sha256 "18406087347e653f82fb59cd2b579841bf640e35f378c44d43f55d957b195184"
    end
  end

  def install
    bin.install "nomadl"
  end

  test do
    assert_match "nomadl #{version}", shell_output("#{bin}/nomadl --version")
  end
end
