function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    conduitUrl: 'https://conduit.productionready.io/api/'
  }
  if (env == 'dev') {
    // customize
    // e.g. config.userEmail = 'bar';
    // e.g. config.userPassword = 'bar';
  } 
  else if (env == 'eph') {
    // customize
  }
  else if (env == 'stg') {
    // customize
  }

  var accessToken = karate.callSingle('classpath:conduit/helpers/signUp.feature', config).authToken
  karate.configure('headers', {Authorization: 'Token ' + accessToken})

  return config;
}