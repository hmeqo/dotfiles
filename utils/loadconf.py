#!/usr/bin/env python

import sys
from itertools import chain
from pathlib import Path

conf_dirs = [i for i in map(Path, sys.argv[1:]) if i.is_dir()]
confs = chain(*[[j for j in i.iterdir() if j.is_file()] for i in conf_dirs])
sorted_confs = list(sorted(confs, key=lambda i: i.stem))

print(*sorted_confs, sep="\n")
