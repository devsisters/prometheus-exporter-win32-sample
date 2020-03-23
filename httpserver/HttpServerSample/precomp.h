//
// https://docs.microsoft.com/en-us/windows/win32/http/http-server-sample-application
//

//
// The "precomp.h" file included in the first example includes all the headers necessary to run the samples.
//

#pragma once

#ifndef __PRECOMP_H__
#define __PRECOMP_H__

#ifndef UNICODE
#define UNICODE
#endif

#ifndef _WIN32_WINNT
#define _WIN32_WINNT 0x0600
#endif

#ifndef WIN32_LEAN_AND_MEAN
#define WIN32_LEAN_AND_MEAN
#endif

#include <windows.h>
#include <http.h>
#include <stdio.h>

#pragma comment(lib, "httpapi.lib")

#endif // __PRECOMP_H__
