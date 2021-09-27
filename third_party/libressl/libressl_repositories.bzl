"""A module defining the third party dependency OpenSSL

The code here was picked up from the `rules_foreign_cc` openssl example
https://github.com/bazelbuild/rules_foreign_cc/tree/0.5.1/examples/third_party/openssl
"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def libressl_repositories():
    maybe(
        http_archive,
        name = "cargo_raze__libressl",
        build_file = Label("//third_party/libressl:BUILD.libressl.bazel"),
        sha256 = "e52eae758d40206a71d763a1a87b71037223bf1986ac239a6be1a6d2ac3916d2",
        strip_prefix = "libressl-3.4.0",
        urls = [
            "https://ftp.openbsd.org/pub/OpenBSD/LibreSSL/libressl-3.4.0.tar.gz",
        ],
    )
