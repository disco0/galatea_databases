extends "generic_record.gd"

var actor = null
var is_reply = false
var message_body = ""

func _load_record(p_dictionary_record, p_databases):
	# Read Data
	._load_record(p_dictionary_record, p_databases)
	
	if(p_dictionary_record.has("actor")):
		var new_actor = p_databases.actor_database.find_record_by_name(p_dictionary_record.actor)
		if(new_actor != null):
			actor = new_actor
			
	if(p_dictionary_record.has("is_reply")):
		is_reply = p_dictionary_record.is_reply
	if(p_dictionary_record.has("message_body")):
		message_body = p_dictionary_record.message_body
		
func _save_record(p_dictionary_record):
	# Write Data
	._save_record(p_dictionary_record)
	if(actor):
		p_dictionary_record.actor = actor.id
	else:
		p_dictionary_record.actor = ""
	p_dictionary_record.is_reply = is_reply
	p_dictionary_record.message_body = message_body