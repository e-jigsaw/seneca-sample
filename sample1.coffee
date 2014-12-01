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

###
=>
✈ coffee sample1.coffee
2014-12-01T07:41:03.479Z	fopzpevyn7gu/1417419663474/-	INFO	hello	Seneca/0.5.21/fopzpevyn7gu/1417419663474/-
null { answer: 3 }
###
