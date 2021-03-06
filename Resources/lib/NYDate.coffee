# Private variables
months = [
	L("january")
	L("february")
	L("march")
	L("april")
	L("may")
	L("june")
	L("july")
	L("august")
	L("september")
	L("october")
	L("november")
	L("december")
]

# NYDate
class NYDate

	constructor: (date) ->
		@date = new Date(date)

	# 7
	getDay: ->
		@date.getDate()

	# 07
	getFormatedDay: ->
		day = @getDay()
		day = "0#{day}" if day < 10

	# 9
	getMonth: ->
		@date.getMonth()

	# 09
	getFormatedMonth: ->
		month = @getMonth()
		month = "0#{month}" if month < 10

	# 6
	getHours: ->
		@date.getHours()

	# 06
	getFormatedHours: ->
		hour = @date.getHours()
		hour = "0#{hour}" if hour < 10
		hour

	# 3
	getMinutes: ->
		@date.getMinutes()

	# 03
	getFormatedMinutes: ->
		minutes = @date.getMinutes()
		minutes = "0#{minutes}" if minutes < 10
		minutes

	# 15:09
	getFormatedTime: ->
		return "#{@getFormatedHours()}:#{@getFormatedMinutes()}"

	# 27 of April
	getDayAndStringMonth: ->
		return "#{@date.getDate()} #{L('of')} #{months[@date.getMonth()]}"

# CommonJS
module.exports = NYDate
