load("@rules_cc//cc:defs.bzl", "cc_library")

package(default_visibility = ["//visibility:public"])

licenses(["notice"])

cc_library(
    name = "raylib",
    hdrs = [
        "include/raylib.h",
        "include/raymath.h",
        "include/rlgl.h",
    ],
    srcs = [
        "lib/raylib.dll",
        "lib/raylib.lib",
        "lib/raylibdll.lib",
    ],
    linkopts = [
        "-DEFAULTLIB:opengl32.lib",
        "-DEFAULTLIB:Winmm.lib",
        "-DEFAULTLIB:gdi32.lib",
        "-DEFAULTLIB:user32.lib",
        "-DEFAULTLIB:shell32.lib",
    ],
    strip_include_prefix = "include",
    visibility = ["//visibility:public"],
)
