#include "lib.h"
#include <cstdio>

#include "absl/strings/str_cat.h"

void foo() { printf("lib - foo()\n"); }

std::string concat_str(std::string_view s1, std::string_view s2) {
  return absl::StrCat(s1, s2);
}