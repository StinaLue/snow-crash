#!/usr/bin/env python3

import sys

incrementor = 0

with open(sys.argv[1], "rb") as token_file:
  for line in token_file:
    for charac in line.strip():
      print(chr(charac - incrementor), end="")
      incrementor += 1

print()
