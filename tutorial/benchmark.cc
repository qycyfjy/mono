#include <string>

#include "absl/strings/str_cat.h"
#include "benchmark/benchmark.h"

static void BM_AbseilStrCat(benchmark::State &state) {
  // Perform setup here
  for (auto _ : state) {
    // This code gets timed
    auto s = absl::StrCat("1234", "abcd");
  }
}

static void BM_StdStringOperatorAdd(benchmark::State &state) {
  // Perform setup here
  for (auto _ : state) {
    // This code gets timed
    auto s = std::string("1234") + std::string("abcd");
  }
}

// Register the function as a benchmark
BENCHMARK(BM_AbseilStrCat);
BENCHMARK(BM_StdStringOperatorAdd);
// Run the benchmark
BENCHMARK_MAIN();