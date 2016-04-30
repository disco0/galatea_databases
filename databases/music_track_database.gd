const generic_database_const = preload("generic_database.gd")

class MusicTrackDatabase:
	extends "generic_database.gd".GenericDatabase

	
	const DATABASE_NAME = "music_track_database.json"
	const RECORDS_NAME = "music_track_records"
	
	class MusicTrackRecord:
		extends "generic_database.gd".GenericRecord
		
		var track_title = ""
		var track_artist = ""
		var track_path = ""
		var playable_on_phone_music_app = false
		
	func load_database_ids():
		return _load_database_ids(databases.path + "/" + DATABASE_NAME, RECORDS_NAME)
		
	func _load_record(p_dictionary_record, p_database_record):
		# Read Data
		._load_record(p_dictionary_record, p_database_record)
		
		if(p_dictionary_record.has("track_title")):
			p_database_record.track_title = p_dictionary_record.track_title
		if(p_dictionary_record.has("track_artist")):
			p_database_record.track_artist = p_dictionary_record.track_artist
		if(p_dictionary_record.has("track_path")):
			p_database_record.track_path = p_dictionary_record.track_path
		if(p_dictionary_record.has("playable_on_phone_music_app")):
			p_database_record.playable_on_phone_music_app = p_dictionary_record.playable_on_phone_music_app
		
	func load_database_values():
		_load_database_values(databases.path + "/" + DATABASE_NAME, RECORDS_NAME)
		
	func _save_record(p_database_record, p_dictionary_record):
		# Write Data
		._save_record(p_database_record, p_dictionary_record)
		
		p_dictionary_record.track_title = p_database_record.track_title
		p_dictionary_record.track_artist = p_database_record.track_artist
		p_dictionary_record.track_path = p_database_record.track_path
		p_dictionary_record.playable_on_phone_music_app = p_database_record.playable_on_phone_music_app
		
	func save_database():
		_save_database(databases.path + "/" + DATABASE_NAME, RECORDS_NAME)
			
	func _create_record():
		return MusicTrackRecord.new()
		
	func _init(p_databases).(p_databases):
		pass