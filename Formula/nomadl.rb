# typed: false
# frozen_string_literal: true

class Nomadl < Formula
  desc "Local browser UI for searching Nomad logs"
  homepage "https://github.com/rselbach/nomadl"
  version "0.9.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rselbach/nomadl/releases/download/v#{version}/nomadl-#{version}-darwin-amd64.zip"
      sha256 "40c11658d58f2253d67eb8662661e049edc26b52590fd066a5dd0ed1470f2044"
    end

    if Hardware::CPU.arm?
      url "https://github.com/rselbach/nomadl/releases/download/v#{version}/nomadl-#{version}-darwin-arm64.zip"
      sha256 "0691adc5617bb63ed92d559863f3ecbf3013c0ed2129fc27295ad67ab3c1fed0"
    end
  end

  def install
    bin.install "nomadl"
  end

  test do
    assert_match "nomadl #{version}", shell_output("#{bin}/nomadl --version")
  end
end
