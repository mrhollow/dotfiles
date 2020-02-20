#!/usr/bin/env python3

import os
import sys

if not len(sys.argv) == 3:
    print("Usage: {0} <from-extension> <to-extension>".format(sys.argv[0]))
    sys.exit(1)

from_ext = sys.argv[1]
to_ext = sys.argv[2]

count = 0

for F in os.listdir('.'):
    if not F.endswith(from_ext):
        continue

    f = F[:-len(from_ext)]
    f += to_ext

    try:
        os.stat(f)
    except FileNotFoundError:
        print("Renaming:", F, "-->", f)
        os.rename(F, f)
        count += 1
        pass

print("Renamed {0} files.".format(count))
