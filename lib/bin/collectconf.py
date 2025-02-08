#!/usr/bin/python

import os
import sys

lst = []
for i in sys.argv[1:]:
    if os.path.isdir(i):
        for p in os.listdir(i):
            path = os.path.join(i, p)
            if os.path.isfile(path):
                lst.append((p, path))
for _, path in sorted(lst, key=lambda i: i[0]):
    print(path)
