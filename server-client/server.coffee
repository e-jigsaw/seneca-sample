type = process.argv[2]
port = process.argv[3]
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

seneca.listen
  type: type || 'http'
  port: port || 8080

###
✈ server.coffee
2014-12-01T08:37:45.225Z	lr8ioeneermg/1417423065220/-	INFO	hello	Seneca/0.5.21/lr8ioeneermg/1417423065220/-
2014-12-01T08:37:45.553Z	lr8ioeneermg/1417423065220/-	INFO	plugin	transport	-	ACT	tx7kyd2orkpq	listen	{type=web,port=10101,host=0.0.0.0,path=/act,protocol=http,timeout=32778,msgprefix=seneca_,callmax=111111,msgidlen=12,role=transport,hook=listen}
###

###
✈ server.coffee tcp
2014-12-01T10:23:40.382Z	782iz6obutrd/1417429420377/-	INFO	hello	Seneca/0.5.21/782iz6obutrd/1417429420377/-
2014-12-01T10:23:40.717Z	782iz6obutrd/1417429420377/-	INFO	plugin	transport	-	ACT	sg0y46kkjhsg	listen	open	{type=tcp,host=0.0.0.0,port=10201,timeout=32778,msgprefix=seneca_,callmax=111111,msgidlen=12,path=,role=transport,hook=listen}
2014-12-01T10:23:53.516Z	782iz6obutrd/1417429420377/-	INFO	plugin	transport	-	ACT	sg0y46kkjhsg	listen	connection	{type=tcp,host=0.0.0.0,port=10201,timeout=32778,msgprefix=seneca_,callmax=111111,msgidlen=12,path=,role=transport,hook=listen}	remote	127.0.0.1	53479
###
