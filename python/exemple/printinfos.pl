# Copyright 2016 Dominique Revuz <dr@univ-mlv.fr>
author=Dominique Revuz 
title=printinfos.pl
tag=root # N'oubliez pas de remplir ce champs svp
template=/python/function/functiongradertemplate
text==

Clicker sur check 

==

grader==

import sys
import json
dico_good = { "success": True , "errormessages" : "" , "execution": "OK", "feedback": "ok", "other": "" }
dico_bad = { "success": False , "errormessages" : "création d'une exception", "execution": "", "feedback": "modifier votre valeur", "other": "" }

def doGood(success=True,error="",execution="OK",feedback="Bravo",other=""):
	dico_good["success"]=success
	dico_good["error"]=error
	dico_good["execution"]=execution
	dico_good["feedback"]=feedback
	dico_good["other"]=other
	print(json.dumps(dico_good)) 


doGood(execution=(sys.version+str(sys.path)))


==


soluce==
# une solution de l'exercice
# utile pour les tests
==