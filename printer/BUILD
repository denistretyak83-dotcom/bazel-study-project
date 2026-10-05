load("@rules_cc//cc:defs.bzl", "cc_library")
load("@rules_cc//cc:defs.bzl", "cc_test")

cc_library(
    name = "printer",
    srcs = ["printer.cpp"],
    hdrs = ["printer.h"],
    deps = ["@abseil-cpp//absl/strings"],
    visibility = ["//visibility:public"]
)

cc_test(
    name = "printer_test",
    srcs = ["printer_test.cpp"],
    deps = [":printer",
            "@googletest//:gtest_main"],
)