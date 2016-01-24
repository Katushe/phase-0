process.stdin.resume();
  process.stdin.setEncoding('utf8');
  var util = require('util');

  console.log("What name would you like to give your character?")
  process.stdin.on('data', function (text) {
    text = text.trim();
    console.log('The name you chose is:', util.inspect(text));
    done();

  });

  function done() {
    console.log("Okay, lets get playing!")
    process.exit();
  }