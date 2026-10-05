#include "printer.h"
#include "absl/strings/str_cat.h"

std::string GetGreeting(const std::string& name) {
    std::string message = absl::StrCat("Hello, ",name ,"!");
    return message;
}