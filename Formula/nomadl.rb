# typed: false
# frozen_string_literal: true

class Nomadl < Formula
  desc "Local browser UI for searching Nomad logs"
  homepage "https://github.com/rselbach/nomadl"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rselbach/nomadl/releases/download/v#{version}/nomadl-#{version}-darwin-amd64.zip"
      sha256 "94980878640520a889a844e94a11a4f1c978e5950c6d76de7964001afc7f8288"
    end

    if Hardware::CPU.arm?
      url "https://github.com/rselbach/nomadl/releases/download/v#{version}/nomadl-#{version}-darwin-arm64.zip"
      sha256 "1dfe9cc15b3d21c6a79196da0b90b7717eb9f58f6a84a98eae2d3ab98c285c6e"
    end
  end

  def install
    bin.install "nomadl"
  end

  test do
    assert_match "nomadl #{version}", shell_output("#{bin}/nomadl --version")
  end
end
