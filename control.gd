extends Control

var saveFileName = "user://WonCases.txt"

# Called when the node enters the scene tree for the first time.
func _ready():


	if FileAccess.file_exists(saveFileName):
		var galleryFile = ReadLinesFromFile(saveFileName)
		print(galleryFile)
	else:
		CreateSaveFile(saveFileName)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
	
func CreateSaveFile(fileName):
	var file = FileAccess.open(fileName, FileAccess.WRITE)
	file.store_line("If you're seeing this, it worked")
	
	file.close()
	
	
func ReadLinesFromFile(fileName):
	
	var file = FileAccess.open(fileName, FileAccess.READ)
	
	var content = file.get_as_text()
	
	
	

	file.close()
	var noNew = content.split("\n") #get rid of newlines

	return noNew
