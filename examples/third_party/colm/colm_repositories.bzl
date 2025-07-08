# buildifier: disable=module-docstring
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def colm_repositories():
    """Load all repositories needed for Colm"""
    maybe(
        http_archive,
        name = "colm",
        build_file = Label("//colm:BUILD.colm.bazel"),
        sha256 = "06c8296cab3c660dcb0b150d5b58c10707278d34a35fe664f8ed05f4606fc079",
        strip_prefix = "colm-0.14.7",
        urls = [
            "https://github.com/adrian-thurston/colm/archive/refs/tags/0.14.7.tar.gz",
        ],
    )
