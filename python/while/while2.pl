# Copyright 2017 Dominique Revuz <dr@univ-mlv.fr>
author=Dominique Revuz 
name=while 
title=   # N'oubliez pas de remplir ce champs svp
tag=while|boucle  # N'oubliez pas de remplir ce champs svp
template=/python/0PLG/template.pl
text==

# While 

Modifier le code suivant pour qu'il affiche les entiers de
3 à 15 (compris).

==

code==

i=0
while i < 10:
	print(i)
	i=i+1
print('fini')

==

expectedoutput==
3
4
5
6
7
8
9
10
11
12
13
14
15
fini
==


