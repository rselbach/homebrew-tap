# typed: false
# frozen_string_literal: true

class Nomadl < Formula
  desc "Local browser UI for searching Nomad logs"
  homepage "https://github.com/rselbach/nomadl"
  version "3.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rselbach/nomadl/releases/download/v#{version}/nomadl-#{version}-darwin-amd64.zip"
      sha256 "62e0c36183e5752e67be2f8dcb36f2dc7e13d64bce0d7f37ed223a559b333c2b"
    end

    if Hardware::CPU.arm?
      url "https://github.com/rselbach/nomadl/releases/download/v#{version}/nomadl-#{version}-darwin-arm64.zip"
      sha256 "a9fd3fed7e0ba4635de2870c7421196fbbe09322e368491ba7255ce8463648b0"
    end
  end

  def install
    bin.install "nomadl"
  end

  test do
    assert_match "nomadl #{version}", shell_output("#{bin}/nomadl --version")
  end
end
