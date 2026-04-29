# typed: false
# frozen_string_literal: true

class Nomadl < Formula
  desc "Terminal UI for browsing Nomad services and tailing task logs"
  homepage "https://github.com/rselbach/nomadl"
  version "0.0.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rselbach/nomadl/releases/download/v#{version}/nomadl-#{version}-darwin-amd64.zip"
      sha256 "9f9d3e30fb625258f7ebad552a4bebe10ee2bf5dada5c348491fc38ba767f076"
    end

    if Hardware::CPU.arm?
      url "https://github.com/rselbach/nomadl/releases/download/v#{version}/nomadl-#{version}-darwin-arm64.zip"
      sha256 "1719ba03d23a01352762c3f83baceb87012950225288adc84386249cc1d72309"
    end
  end

  def install
    bin.install "nomadl"
  end

  test do
    assert_match "nomadl #{version}", shell_output("#{bin}/nomadl --version")
  end
end
