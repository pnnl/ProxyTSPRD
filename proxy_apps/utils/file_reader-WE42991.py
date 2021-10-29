import json

def read_config(config_file="config_baseline.json"):
	'''
	Add error handling:
		- if no such json file found
		- if corrupt json file and unable to read
		- check if at least one controller exists and mandatory fields exist
	'''
	# Opening JSON file 
	with open(config_file) as json_file: 
		config = json.load(json_file) 

	return config