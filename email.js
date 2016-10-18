var nodemailer = require('nodemailer');
var fs = require('fs');

var isMobile = process.argv[2] === 'mobile';

var transporter = nodemailer.createTransport({
        service: 'Gmail',
        auth: {
            user: 'riarzach47@gmail.com', // Your email id
            pass: 'p1o2i3u4' // Your password
        }
    });

var emails = [
    'rivantsov@changers.team', //Yandex
    'riarzach47@gmail.com', //Gmail
    'khekfi@inbox.ru', //Mail.ru
].join(',');

var emailsMobile = [
    'ruslan--47@yandex.ru', //Yandex
    'specter978@gmail.com', //Gmail
    'rus47@inbox.ru', //Mail.ru
].join(',');

var contents = fs.readFileSync('index.html', 'utf8');

var mailOptions = {
    from: '"Fred Foo ?" <riarzach47@gmail.com>', // sender address
    to: isMobile ? emailsMobile : emails, // list of receivers
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