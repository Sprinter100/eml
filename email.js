var nodemailer = require('nodemailer');
var fs = require('fs');

var transporter = nodemailer.createTransport({
        service: 'Gmail',
        auth: {
            user: 'riarzach47@gmail.com', // Your email id
            pass: 'p1o2i3u4' // Your password
        }
    });

var contents = fs.readFileSync('index.html', 'utf8');

console.log(contents);

var mailOptions = {
    from: '"Fred Foo ?" <riarzach47@gmail.com>', // sender address
    to: 'rivantsov@changers.team', // list of receivers
    subject: 'Hello', // Subject line
    text: '', // plaintext body
    html: contents // html body
};

transporter.sendMail(mailOptions, function(error, info){
    if(error){
        return console.log(error);
    }
    console.log('Message sent: ' + info.response);
});