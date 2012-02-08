# Requires
caterpillar = require "#{__dirname}/../lib/caterpillar.coffee"

# Create
logger = new caterpillar.Logger
	level: 7

# Logs
for own name,code of logger.config.levels
	logger.log name, "this is #{name} and is level #{code}"

# Standard
logger.log ''
logger.log 'this is awesome'
logger.log 'this','is','awesome'

# Colors
cliColor = caterpillar.cliColor
logger.log ''
logger.log 'this is', cliColor.magenta.bold.italic.underline('awesome')

# Grouping
logger.config.autoFlush = false
logger.log ''
logger.log 'one'
logger.log 'two'
logger.log 'three'
setTimeout(
	-> logger.flush()
	3000
)