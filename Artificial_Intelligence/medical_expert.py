print("\n\n\n\n\n")
diseases=[]
print("------------------simple medical expert------------------")
print("\n\n")
def check_diseas():
	cancer=0
	fever=0
	cold=0
	
	dummy_input=""
	cancer_symptums=['hair loss','weight loss','blood vomit','blood-tinged saliva']
	fever_symptums=['shaking','cold','cough','chills']
	cold_symptums=['headache','runny_nose','sneezing','sore_throat']

	for i in cancer_symptums:
		dummy_input=raw_input("do you have " + i +"  Y/N ")
		if(dummy_input=="y" or dummy_input=="Y"):
			cancer +=1
		print("\n")
	for i in fever_symptums:
		dummy_input=raw_input("do you have " + i + "  Y/N ")
		if(dummy_input=="y" or dummy_input=="Y") :
			fever +=1
		print("\n")
	for i in cold_symptums:
		dummy_input=raw_input("do you have " + i + "  Y/N ")
		if(dummy_input=="y" or dummy_input=="Y"):
			cold +=1
		print("\n")
	diseases=[cancer,fever,cold]
	diseases=max(diseases)
	tmp=str(diseases)
	print("user has "+ " "+ tmp)
	if diseases== cold:
		print("Advices and Sugestions\n1: Tylenol\n2: Panadol\n3: Nasal spray\nPlease weare warm cloths because")
	elif diseases== fever:
		print("Advices and Sugestions\n 1: Tylenol \n2:Nasal spray \nnPlease weare warm cloths because")
	elif diseases == cancer:
		print("Advices and Sugestions\n 1: 1: Chloramphenicol\n 2: Amoxicillin\n3: Ciprofloxacin\n4: Azithromycin\nPlease do complete bed rest and take soft diet because")
	
check_diseas()
