cc_binary(
    name = "hello",
    srcs = ["hello.cc"],
    args = [
        "$(rlocationpath //tutorial:wabbit_alpha.png)",
    ],
    deps = [
        ":lib",
        "@fmt//:fmt",
        "@lua//:lua",
        "@raylib//:raylib",
        "@bazel_tools//tools/cpp/runfiles",
    ],
    data = [
        "//tutorial:wabbit_alpha.png"
    ],
)

cc_library(
    name = "lib",
    srcs = ["lib.cc"],
    hdrs = ["lib.h"],
    deps = [
        "@com_google_absl//absl/strings"
    ],
)

cc_test(
    name = "test",
    srcs = ["test.cc"],
    deps = [
        ":lib",
        "@com_google_googletest//:gtest",
        "@com_google_googletest//:gtest_main",
    ],
)

cc_binary(
    name = "benchmark",
    srcs = ["benchmark.cc"],
    deps = [
        ":lib",
        "@com_google_benchmark//:benchmark",
        "@com_google_absl//absl/strings"
    ]
)

load("@hedron_compile_commands//:refresh_compile_commands.bzl", "refresh_compile_commands")

refresh_compile_commands(
    name = "recc",
    targets = {
        "//tutorial:hello": "",
        "//tutorial:test": "",
        "//tutorial:lib": "",
        "//tutorial:benchmark": "",
    },
    # No need to add flags already in .bazelrc. They're automatically picked up.
    # If you don't need flags, a list of targets is also okay, as is a single target string.
    # Wildcard patterns, like //... for everything, *are* allowed here, just like a build.
    # As are additional targets (+) and subtractions (-), like in bazel query https://docs.bazel.build/versions/main/query.html#expressions
    # And if you're working on a header-only library, specify a test or binary target that compiles it.
)
