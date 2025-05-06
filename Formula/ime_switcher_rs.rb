# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class ImeSwitcherRs < Formula
  desc ""
  homepage "https://github.com/noe132/ime_switcher_rs"
  url "https://github.com/noe132/ime_switcher_rs/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "387ad8ec041f5269569c4b7a4fe074d3ec6c9b3ef092e6f9bdcd56cbe506fec4"
  license "MIT"

  depends_on "rust" => :build

  # Additional dependency
  # resource "" do
  #   url ""
  #   sha256 ""
  # end

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test ime_switcher_rs`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system bin/"program", "do", "something"`.
    system "false"
  end

  service do
    run opt_bin/"ime_switcher_rs"
    log_path var/"log/ime_switcher_rs.log"
    error_log_path var/"log/ime_switcher_rs_err.log"
    keep_alive true
  end
end
