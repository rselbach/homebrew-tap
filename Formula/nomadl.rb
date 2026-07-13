# typed: false
# frozen_string_literal: true

class Nomadl < Formula
  desc "Local browser UI for searching Nomad logs"
  homepage "https://github.com/rselbach/nomadl"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rselbach/nomadl/releases/download/v#{version}/nomadl-#{version}-darwin-amd64.zip"
      sha256 "b626ddf33a6334cd312f81e880b246047108a51a0164cab9f508cbeffaa6fa01"
    end

    if Hardware::CPU.arm?
      url "https://github.com/rselbach/nomadl/releases/download/v#{version}/nomadl-#{version}-darwin-arm64.zip"
      sha256 "bd16025dfe244aa8f42c5e186c7f590d6983b027daa160273e9df9f850178ba7"
    end
  end

  def install
    bin.install "nomadl"
  end

  test do
    assert_match "nomadl #{version}", shell_output("#{bin}/nomadl --version")
  end
end
