# Copyright 2016 Dominique Revuz <dr@univ-mlv.fr>

# using the new plgrader 

name=  /python/0PLG/template.pl

grader==
from plgrader import Grader
g=Grader()
print(g.grade())
==
sandbox=@/pysrc/src/__init__.py
sandbox=@/pysrc/src/plgrader.py
sandbox=@/pysrc/src/feedback.py
