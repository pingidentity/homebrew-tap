class Pingctl < Formula
  desc "pingctl - A PingIdentity CLI"
  homepage "https://pingidentity.github.io/pingctl"
  url "https://github.com/pingidentity/pingctl/archive/v1.0.1.tar.gz"
  sha256 "a80223aafb6a1df04fa4105cfa82d91d322f49230146f05318f10bd4db85f200"

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
