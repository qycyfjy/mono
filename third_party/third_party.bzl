load("//third_party/gtest:direct.bzl", "load_com_google_googletest")
load("//third_party/abseil:direct.bzl", "load_com_google_absl")
load("//third_party/benchmark:direct.bzl", "load_com_google_benchmark")
load("//third_party/fmt:direct.bzl", "load_fmt")
load("//third_party/lua:direct.bzl", "load_lua")
load("//third_party/raylib:direct.bzl", "load_raylib")

def load_third_party_libraries():
    load_com_google_googletest()
    load_com_google_benchmark()
    load_com_google_absl()
    load_fmt()
    load_lua()
    load_raylib()
