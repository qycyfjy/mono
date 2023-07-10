load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def load_raylib():
    # It is not clear in Bazel what is the best practice for using http_archive.
    # If you call http_archive without any kind of check, you could call it two times
    # with the same name and different parameters and you would not get any warning/error.
    #
    # One option is to check if it is already available in the existing_rules and only
    # call http_archive if it is not present. In the else you could display a message in
    # case that was already present but in reality you would only want a warning/error if was
    # already called with different parameters (different library version for example).
    #
    # Another option is to wrap the http_archive in a maybe call but this will also not display
    # a warning. It behaves like the if check with the advantage that the name has not to be
    # repeated
    maybe(
        http_archive,
        name = "raylib",
        url = "https://github.com/raysan5/raylib/releases/download/4.5.0/raylib-4.5.0_win64_msvc16.zip",
        sha256 = "06bb8a2cbf46deee383c94df7c2f2990b4208cc40335a881d864895f29ba4618",
        strip_prefix = "raylib-4.5.0_win64_msvc16",
        build_file = "//third_party/raylib:raylib.BUILD",
    )