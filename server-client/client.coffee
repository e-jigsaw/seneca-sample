type = process.argv[2]
seneca = require('seneca')()

seneca.client
  type: type || 'http'

seneca.act
  role: 'math'
  cmd: 'sum'
  left: 1
  right: 2
, (err, result)->
  console.log err, result

###
✈ client.coffee
2014-12-01T08:37:49.669Z	qy407s6n3tj9/1417423069664/-	INFO	hello	Seneca/0.5.21/qy407s6n3tj9/1417423069664/-
2014-12-01T08:37:50.000Z	qy407s6n3tj9/1417423069664/-	INFO	plugin	transport	-	ACT	3nvnwd06jm1v	client	{type=web,port=10101,host=0.0.0.0,path=/act,protocol=http,timeout=32778,msgprefix=seneca_,callmax=111111,msgidlen=12,role=transport,hook=client}	any
null { answer: 3 }
###
