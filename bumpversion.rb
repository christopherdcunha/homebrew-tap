class Bumpversion < Formula
  include Language::Python::Virtualenv

  desc "Increase version numbers with SemVer terms"
  homepage "https://pypi.python.org/pypi/bumpversion"
  url "https://github.com/peritus/bumpversion/archive/v0.5.3.tar.gz"
  sha256 "97ac6efca7544853309b68efe92f113ab6bddb77ecbaefa5702a6183a30bcb33"
  head "https://github.com/peritus/bumpversion.git"

  bottle :unneeded

  depends_on "python"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("script -q /dev/null #{bin}/bumpversion --version")
  end
end
