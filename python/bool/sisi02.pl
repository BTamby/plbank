# Copyright 2017 Dominique Revuz <dr@univ-mlv.fr>
author=Dominique Revuz 
name=sisi002.pl
title= Si  Sinon  
tag= input|else|if|elif
template=/python/0PLG/template.pl
text==
## IF ELIF ELSE
Ecrire un programme qui demande à l’utilisateur un entier grace au texte:
	Saisissez un entier?
Si l'entier est **positif** affiche 
	Positif.
Sinon si l'entier est **négatif** affiche
	Négatif.
sinon affiche
	Nul.
==



input0==
12
==

input1==
0
==
input2==
-12
==


soluce==
n=int(input("Saisissez un entier?"))
if n >0:
	print("Positif.")
elif n< 0:
	print("Négatif.")
else:
	print("Nul.")
==
