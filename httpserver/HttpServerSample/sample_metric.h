#pragma once

#ifndef __SAMPLE_METRIC_H__
#define __SAMPLE_METRIC_H__

int increase_counter(const int status_code, const int step = 1);
int get_counter_value(const int status_code);

#endif // __SAMPLE_METRIC_H__