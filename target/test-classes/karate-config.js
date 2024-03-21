function fn() {
var env = karate.env; // get system property 'karate.env' karate.log('karate.evn system .......'
if(!env) {
	env = 'dev';
}
var config = {
	env : env,
	myVarName : 'Hello Nish, this is Karate',
	baseUrl : 'https://gorest.co.in',
	tokenID : 'a62291b0b917f60353cb3a3db5fd84413dc2c350c24d66e6144593b89d76fad8'
}

if(env == 'dev') {
	// customize
	// e.g. config.foo = 'bar';
}
else if(env == 'e2e') {
	// customize
}
return config;	
	
}


