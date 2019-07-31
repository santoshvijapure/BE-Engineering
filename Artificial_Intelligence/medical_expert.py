print("\n\n\n\n\n")
diseases=[]
print("------------------simple medical expert------------------")
print("\n\n")
def check_diseas():
	cancer=0
	fever=0
	cold=0
	
	dummy_input=""
	cancer_symptoms=['hair loss','weight loss','blood vomit','blood-tinged saliva']
	fever_symptoms=['shaking','cold','cough','chills']
	cold_symptoms=['headache','runny_nose','sneezing','sore_throat']

	for i in cancer_symptoms:
		dummy_input=raw_input("do you have " + i +"  Y/N ")
		if(dummy_input=="y" or dummy_input=="Y"):
			cancer +=1
		print("\n")
	for i in fever_symptoms:
		dummy_input=raw_input("do you have " + i + "  Y/N ")
		if(dummy_input=="y" or dummy_input=="Y") :
			fever +=1
		print("\n")
	for i in cold_symptoms:
		dummy_input=raw_input("do you have " + i + "  Y/N ")
		if(dummy_input=="y" or dummy_input=="Y"):
			cold +=1
		print("\n")
	diseases={"cancer":cancer,"fever":fever,"cold":cold}
	diseas=max(diseases)
	print("user has "+" "+diseas)
	if diseas== 'cold':
		print("Advices and Sugestions\n1: Tylenol\n2: Panadol\n3: Nasal spray\nPlease weare warm cloths because")
	elif diseas== 'fever':
		print("Advices and Sugestions\n 1: Tylenol \n2:Nasal spray \nnPlease weare warm cloths because")
	elif diseas == 'cancer':
		print("Advices and Sugestions\n 1: 1: Chloramphenicol\n 2: Amoxicillin\n3: Ciprofloxacin\n4: Azithromycin\nPlease do complete bed rest and take soft diet because")

check_diseas()
