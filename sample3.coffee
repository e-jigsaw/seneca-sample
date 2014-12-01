seneca = require('seneca')()

seneca.add
  role: 'math'
  cmd: 'sum'
, (args, callback)->
  sum = args.left + args.right
  callback null,
    answer: sum

seneca.add
  role: 'math'
  cmd: 'mul'
, (args, callback)->
  sum = args.left * args.right
  callback null,
    answer: sum


math = seneca.pin
  role: 'math'
  cmd: '*'

math.sum
  left: 1
  right: 2
, (err, res)-> console.log err, res

math.mul
  left: 3
  right: 4
, (err, res)-> console.log err, res

###
✈ coffee sample3.coffee
2014-12-01T07:47:16.777Z	6ehy8wbqtkci/1417420036773/-	INFO	hello	Seneca/0.5.21/6ehy8wbqtkci/1417420036773/-
null { answer: 3 }
null { answer: 12 }
###
