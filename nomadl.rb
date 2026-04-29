# typed: false
# frozen_string_literal: true

class Nomadl < Formula
  desc "Terminal UI for browsing Nomad services and tailing task logs"
  homepage "https://github.com/rselbach/nomadl"
  version "0.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rselbach/nomadl/releases/download/v#{version}/nomadl-#{version}-darwin-amd64.zip"
      sha256 "3a7553607b453f7407f53f5d9554bec85fa17e0f72e0d8b0ea374cdd959b6f14"
    end

    if Hardware::CPU.arm?
      url "https://github.com/rselbach/nomadl/releases/download/v#{version}/nomadl-#{version}-darwin-arm64.zip"
      sha256 "71dc74eeaaf87f95a7c08b3cb06bbd1ee67ab3d08f7ef5c5daf9628f88b91671"
    end
  end

  def install
    bin.install "nomadl"
  end

  test do
    assert_match "nomadl #{version}", shell_output("#{bin}/nomadl --version")
  end
end
