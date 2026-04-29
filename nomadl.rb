# typed: false
# frozen_string_literal: true

class Nomadl < Formula
  desc "Terminal UI for browsing Nomad services and tailing task logs"
  homepage "https://github.com/rselbach/nomadl"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rselbach/nomadl/releases/download/v0.0.1/nomadl-0.0.1-darwin-amd64.zip"
      sha256 "7ff44803f01ab2728abe42a20d1b714499cc0accc25ab8fc0595e98bd8d64f1e"
    end

    if Hardware::CPU.arm?
      url "https://github.com/rselbach/nomadl/releases/download/v0.0.1/nomadl-0.0.1-darwin-arm64.zip"
      sha256 "5895a68196f9bc28bd1775f16b28ab1d758a75c7275f01c64a6a1fda2de04955"
    end
  end

  def install
    bin.install "nomadl"
  end

  test do
    assert_match "nomadl #{version}", shell_output("#{bin}/nomadl --version")
  end
end
