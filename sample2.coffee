seneca = require('seneca')()

seneca.add
  role: 'math'
  cmd: 'sum'
, (args, callback)->
  sum = args.left + args.right
  callback null,
    answer: sum

seneca.act
  role: 'math'
  cmd: 'sum'
  left: 1
  right: 2
, (err, result)->
  console.log err, result

seneca.act
  role: 'math'
  cmd: 'sum'
  left: 3
  right: 4
, (err, result)->
  console.log err, result

###
✈ coffee sample2.coffee
2014-12-01T07:44:25.726Z	eyr50sa4ftji/1417419865721/-	INFO	hello	Seneca/0.5.21/eyr50sa4ftji/1417419865721/-
null { answer: 3 }
null { answer: 7 }
###
