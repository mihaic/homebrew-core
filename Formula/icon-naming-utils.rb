class IconNamingUtils < Formula
  desc "Script to handle icon names in desktop icon themes"
  homepage "https://specifications.freedesktop.org/icon-naming-spec/icon-naming-spec-latest.html"
  # Upstream seem to have enabled by default SSL/TLS across whole domain which
  # is problematic when the cert is for www rather than a wildcard or similar.
  # url "http://tango.freedesktop.org/releases/icon-naming-utils-0.8.90.tar.gz"
  url "https://mirrors.ocf.berkeley.edu/debian/pool/main/i/icon-naming-utils/icon-naming-utils_0.8.90.orig.tar.gz"
  mirror "https://mirrorservice.org/sites/ftp.debian.org/debian/pool/main/i/icon-naming-utils/icon-naming-utils_0.8.90.orig.tar.gz"
  sha256 "044ab2199ed8c6a55ce36fd4fcd8b8021a5e21f5bab028c0a7cdcf52a5902e1c"

  bottle do
    cellar :any_skip_relocation
    sha256 "f8a29d74289a555ba7969b8d8f6984de7251393d7d0270e61abf69d36f270fc0" => :el_capitan
    sha256 "22a80ba1d9042481251c8b85aa46dc163abfd9a54d6815ab43a3a5124592be5f" => :yosemite
    sha256 "1e2f32f1e755df8a974482ad56c0cc85f7d537005419b0c0c42013f0f0ab717d" => :mavericks
  end

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
