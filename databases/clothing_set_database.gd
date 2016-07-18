const generic_database_const = preload("generic_database.gd")

class ClothingSetDatabase:
	extends "generic_database.gd".GenericDatabase
	
	const DATABASE_IDENT = "CLST"
	const DATABASE_NAME = "clothing_set_database"
	const DATABASE_NAME_JSON = "clothing_set_database.json"
	const DATABASE_NAME_BINARY = "clothing_set_database.gbd"
	const DATABASE_INLINED_FILENAME = "clothing_set_database_inlined.gd"
	const RECORDS_NAME = "clothing_set_records"

	class ClothingSetRecord:
		extends "generic_database.gd".GenericRecord
		
		var clothing = []
		
	func get_database_name():
		return DATABASE_NAME
		
	func get_inlined_filename():
		return DATABASE_INLINED_FILENAME
		
	func load_database_ids():
		return _load_database_ids(databases.path + "/" + DATABASE_NAME_JSON, RECORDS_NAME)
		
	func _load_record(p_dictionary_record, p_database_record):
		# Read Data
		._load_record(p_dictionary_record, p_database_record)
		
	func load_database_values():
		_load_database_values(databases.path + "/" + DATABASE_NAME_JSON, RECORDS_NAME)
		
	func _save_record(p_database_record, p_dictionary_record):
		# Write Data
		._save_record(p_database_record, p_dictionary_record)
		
	func save_database():
		_save_database(databases.path + "/" + DATABASE_NAME_JSON, RECORDS_NAME)
			
	func _create_record():
		return ClothingSetRecord.new()
		
	func _init(p_databases).(p_databases):
		pass