#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
#  drgrader.py
#  
#  Copyright 2016 Dominique Revuz <dr@univ-mlv.fr>
#  



import sys
import json
def failure(message):
	dico_reponse = { "success": 0 , "errormessages" : "" ,
	"feedback": message, "other":"" ,"error":"","execution":""}
	print(json.dumps(dico_reponse))
	sys.exit(0)

f = open("student.py","r")
lignes = f.read().split('\n')

if len(lignes)<2:
	failure("Qui a dit efface tout cela va marcher ?\n")

if "1a" in lignes :
		failure("Désolé mais **1a** n'est pas un identifiant correct.\nIl peut être confondu avec le nombre en héxadécimal 170 \n Aucun identificateur ne peut commencer par un chiffre\n Par contre a1 est correct \n")
if "\"bob\"" in lignes or "\'bob\'" in lignes:
		failure(" Les **bob** sont des chaines de caractères les \" guillemets et les \' apostrophes délimitant le début et la fin de celles-ci.\n Ce n'est donc pas un identificateur.")
if "b*b" in lignes:
		failure(" **b*b** est le résultat d'une multiplication * de la variable b\n Ce n'est donc pas un identificateur.")
if "@@Truc@@" in lignes:
		failure(" le caractère @ n'est pas autorisé dans les identificateurs.\n @@Truc@@ n'est donc pas un identificateur.")
if "truc()" in lignes:
		failure("# **truc()** est le resultat d'un appel de la fonction **truc**\n\n **truc** est un identificateur, mais truc() est le résultat de l'appel.\nCe n'est donc pas un identificateur.")
if "def" in lignes:
		failure(" **def** est un mot réservé du langage <a href=\"https://fr.wikibooks.org/wiki/Programmation_Python/Tableau_des_mots_r%C3%A9serv%C3%A9s\">Tableau des mots réservés</A> ce mot permet de définir une fonction.\n C'est un mot réservé donc pas utlisable pour une variable.")
if "$pip$" in lignes:
		failure(" **$pip$** contient des $ qui ne sont pas autorisés dans les identificateurs de variables.\n Ce n'est donc pas un identificateur.")
if "Je ne suis pas un identifiant" in lignes:
		failure(" le caractère espace permet de séparer les mots et les identificateurs il n'est donc pas autorisé dans un identificateur.\n **\'Je ne suis pas un identifiant\'** n'est donc pas un identificateur.")

if "42" in lignes:
		failure(" **42** est un entier et donc pour ne pas avoir d\'ambiguïté entre des valeurs entière et des identificateurs les valeurs entières ne sont pas des identificateurs.")


for x in ["jenesuispasunidentifiant", "JeNeSuisPasUnIdentifiant", "a",
"a1","abc", "__truc__"]:
	if not x in lignes:
		failure("Vous avez éliminé l'identificateur ",x," qui est un identificateur valable.\n")

dico_reponse = { "success": 1 , "errormessages" : "" ,
 "feedback": "Bravo ", "other":"" ,"error":"","execution":""}
print(json.dumps(dico_reponse))

sys.exit(0)

