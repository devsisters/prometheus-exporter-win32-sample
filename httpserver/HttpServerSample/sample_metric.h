#pragma once

#ifndef __SAMPLE_METRIC_H__
#define __SAMPLE_METRIC_H__

#include <vector>

int increase_counter(const int status_code, const int step = 1);
int get_counter_value(const int status_code);
void get_metric_key_list(std::vector<int>& v);

#endif // __SAMPLE_METRIC_H__