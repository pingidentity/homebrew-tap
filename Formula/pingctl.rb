class Pingctl < Formula
  desc "pingctl - A PingIdentity CLI"
  homepage "https://pingidentity.github.io/pingctl"
  url "https://github.com/pingidentity/pingctl/archive/v1.0.2.tar.gz"
  sha256 "70a5d7b0bd3f51b7aab25bbdbe9b517e192daaec218c8eb61c20de0cde3ce151"

  depends_on "kubernetes-cli"
  depends_on "kubectx"
  depends_on "kustomize"
  depends_on "gettext"
  depends_on "stern"
  depends_on "jq"
  depends_on "mike-engel/jwt-cli/jwt-cli"
  depends_on "k9s"

  def install
    bin.install "pingctl"
  end

  def post_install
    ohai "Verify your existing Ping Identity pingctl configs with"
    ohai "  pingctl info"
    ohai "  pingctl config"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/pingctl 2>&1")
  end
end
