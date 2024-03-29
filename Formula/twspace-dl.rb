# frozen_string_literal: true

class TwspaceDl < Formula
  include Language::Python::Virtualenv

  desc 'Download Twitter Space recordings'
  homepage 'https://github.com/HoloArchivists/twspace-dl'
  url 'https://files.pythonhosted.org/packages/77/42/943b3474b9e70940be1f7ac9a5a390a50fbd692c9b1d5346a14064ed2a14/twspace_dl-2023.1.22.1.tar.gz'
  sha256 '050e78b4583374351c288114e3b01ab34b0b19ad2d4971d15c5519521cf3f2f4'
  license 'GPL-2.0-only'

  depends_on 'python3'

  resource 'certifi' do
    url 'https://files.pythonhosted.org/packages/37/f7/2b1b0ec44fdc30a3d31dfebe52226be9ddc40cd6c0f34ffc8923ba423b69/certifi-2022.12.7.tar.gz'
    sha256 '35824b4c3a97115964b408844d64aa14db1cc518f6562e8d7261699d1350a9e3'
  end

  resource 'charset-normalizer' do
    url 'https://files.pythonhosted.org/packages/96/d7/1675d9089a1f4677df5eb29c3f8b064aa1e70c1251a0a8a127803158942d/charset-normalizer-3.0.1.tar.gz'
    sha256 'ebea339af930f8ca5d7a699b921106c6e29c617fe9606fa7baa043c1cdae326f'
  end

  resource 'idna' do
    url 'https://files.pythonhosted.org/packages/8b/e1/43beb3d38dba6cb420cefa297822eac205a277ab43e5ba5d5c46faf96438/idna-3.4.tar.gz'
    sha256 '814f528e8dead7d329833b91c5faa87d60bf71824cd12a7530b5526063d02cb4'
  end

  resource 'requests' do
    url 'https://files.pythonhosted.org/packages/9d/ee/391076f5937f0a8cdf5e53b701ffc91753e87b07d66bae4a09aa671897bf/requests-2.28.2.tar.gz'
    sha256 '98b1b2782e3c6c4904938b84c0eb932721069dfdb9134313beff7c83c2df24bf'
  end

  resource 'urllib3' do
    url 'https://files.pythonhosted.org/packages/c5/52/fe421fb7364aa738b3506a2d99e4f3a56e079c0a798e9f4fa5e14c60922f/urllib3-1.26.14.tar.gz'
    sha256 '076907bf8fd355cde77728471316625a4d2f7e713c125f51953bb5b3eecf4f72'
  end

  def install
    virtualenv_create(libexec, 'python3')
    virtualenv_install_with_resources
  end

  def caveats
    <<~EOS
      You can view information on how to use twspace_dl by calling:
       "twspace_dl -h"
    EOS
  end

  test do
    assert shell_output('python3 test.py')
  end
end
