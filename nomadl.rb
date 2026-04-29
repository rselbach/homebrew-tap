# typed: false
# frozen_string_literal: true

class Nomadl < Formula
  desc "Terminal UI for browsing Nomad services and tailing task logs"
  homepage "https://github.com/rselbach/nomadl"
  version "0.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rselbach/nomadl/releases/download/v#{version}/nomadl-#{version}-darwin-amd64.zip"
      sha256 "20f53af03b444c0b071ddc85ccb0ef59abb14d3c26bd983bcfc6aada574571f3"
    end

    if Hardware::CPU.arm?
      url "https://github.com/rselbach/nomadl/releases/download/v#{version}/nomadl-#{version}-darwin-arm64.zip"
      sha256 "37ebdbd259eeaac860e7337539174bb991941d91a9d2a2ea4a6ce35683bd9d4a"
    end
  end

  def install
    bin.install "nomadl"
  end

  test do
    assert_match "nomadl #{version}", shell_output("#{bin}/nomadl --version")
  end
end
