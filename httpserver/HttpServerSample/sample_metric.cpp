#include "sample_metric.h"

#include <atomic>
#include <cmath>
#include <concurrent_unordered_map.h>

static Concurrency::concurrent_unordered_map<int, std::atomic_int> metric_counters;

int increase_counter(const int status_code, const int step) {
	auto kv = std::make_pair(status_code, step);
	auto &constructed_kv = *(metric_counters.insert(kv).first);
	auto &val = constructed_kv.second;
	val += abs(step);
	return val;
}

inline int get_counter_value(const int status_code) {
	return increase_counter(status_code, 0);
}
