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

seneca.listen()

###
✈ server.coffee
2014-12-01T08:37:45.225Z	lr8ioeneermg/1417423065220/-	INFO	hello	Seneca/0.5.21/lr8ioeneermg/1417423065220/-
2014-12-01T08:37:45.553Z	lr8ioeneermg/1417423065220/-	INFO	plugin	transport	-	ACT	tx7kyd2orkpq	listen	{type=web,port=10101,host=0.0.0.0,path=/act,protocol=http,timeout=32778,msgprefix=seneca_,callmax=111111,msgidlen=12,role=transport,hook=listen}
###
