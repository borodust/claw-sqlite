#ifndef CLAW_SQLITE_H_
#define CLAW_SQLITE_H_

#include "sqlite3.h"

// long long because pointers, long probably would have been enough
#define SQLITE_REDEFINED_STATIC ( (long long) SQLITE_STATIC )
#define SQLITE_REDEFINED_TRANSIENT ( (long long) SQLITE_TRANSIENT )

#endif //CLAW_SQLITE_H_
