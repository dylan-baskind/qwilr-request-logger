###
	Top Level request logger.
	See which route we're at in the console.
###

# Top Level Request Logger
module.exports = (req, res, next) ->
	requestLogger = require("qwilr-logger")(debug: yes)
	
	# The route path
	path = req.method + " : " + req.path
	
	# Borders as long as the path
	border = Array(path.length + 4).join '-'
	
	# Output to the console.
	requestLogger ""
	requestLogger ""
	requestLogger border
	requestLogger.note 
	requestLogger border
	
	next()