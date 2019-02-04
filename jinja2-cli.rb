class Jinja2Cli < Formula
  include Language::Python::Virtualenv

  desc "Increase version numbers with SemVer terms"
  homepage "https://github.com/mattrobenolt/jinja2-cli"
  url "https://github.com/mattrobenolt/jinja2-cli/archive/0.6.0.tar.gz"
  sha256 "749e0887a60a5b4076dfa8bb26a9cc2bafb171883a4cd4a8c2d446d06627fa2f"
  head "https://github.com/mattrobenolt/jinja2-cli.git"

  bottle :unneeded

  depends_on "python"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("script -q /dev/null #{bin}/jinja2 --version")
  end

end
