# typed: false
# frozen_string_literal: true

class Miabi < Formula
  desc "Command-line client for the Miabi control panel"
  homepage "https://miabi.io"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/miabi-io/miabi-cli/releases/download/v#{version}/miabi_#{version}_darwin_arm64.tar.gz"
      sha256 "c24d297d3fcb12491e8ea48b1cdec9dbc64f06cac6c02bc09949640531adcbd5"
    else
      url "https://github.com/miabi-io/miabi-cli/releases/download/v#{version}/miabi_#{version}_darwin_amd64.tar.gz"
      sha256 "12d42978ae01bbde1a0ea2f8d1d25338258a80149e6608a18c4834559f925b0a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/miabi-io/miabi-cli/releases/download/v#{version}/miabi_#{version}_linux_arm64.tar.gz"
      sha256 "5dd873dc354e6b235adca9135f353bd302d8e539055f33fb01e738cdfb8646db"
    else
      url "https://github.com/miabi-io/miabi-cli/releases/download/v#{version}/miabi_#{version}_linux_amd64.tar.gz"
      sha256 "a8a603c4f26c9a3098fb09ebd115052171e894533c5c2f0c88ea5b3b5866ff31"
    end
  end

  def install
    bin.install "miabi"
    generate_completions_from_executable(bin/"miabi", "completion")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/miabi --version")
  end
end
