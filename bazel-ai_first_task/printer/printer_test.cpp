#include "printer.h"
#include "gtest/gtest.h"

TEST(PrinterTest, ReturnsCorrectGreeting) {
    EXPECT_EQ(GetGreeting("Bazel"), "Hello, Bazel!");
}