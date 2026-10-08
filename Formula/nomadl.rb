# typed: false
# frozen_string_literal: true

class Nomadl < Formula
  desc "Local browser UI for searching Nomad logs"
  homepage "https://github.com/rselbach/nomadl"
  version "3.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rselbach/nomadl/releases/download/v#{version}/nomadl-#{version}-darwin-amd64.zip"
      sha256 "af0e58331f0572c501aefebdd82b4c6a24e3e4f891dcedf51514d9f518feb3d6"
    end

    if Hardware::CPU.arm?
      url "https://github.com/rselbach/nomadl/releases/download/v#{version}/nomadl-#{version}-darwin-arm64.zip"
      sha256 "078821bfa41533e279a9a7efad139f5d85fc34d1988bf6124a662901dc39bad5"
    end
  end

  def install
    bin.install "nomadl"
  end

  test do
    assert_match "nomadl #{version}", shell_output("#{bin}/nomadl --version")
  end
end
