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
    //,'peter.palkin2016@yandex.ru' //Yandex
    //'pavel.kozlov.msu@gmail.com',
    //'n.kravtsova@aventica.ru',
    //'specter978@gmail.com'
    //,'riarzach47@gmail.com', //Gmail
    ,'test153153153@mail.ru'
    ,'test153153153@yandex.ru'
    ,'test153153153@gmail.com'
].join(',');

var emailsMobile = [
    //'ruslan--47@yandex.ru', //Yandex
    //,'n.kravtsova@aventica.ru'
    //,'test153153153@gmail.com' //Gmail
    //,'easy3rider3@gmail.com' //Gmail
    //,'specter978@gmail.com' //Gmail
    //,'rus47@inbox.ru' //Mail.ru
].join(',');

//var contents = fs.readFileSync('newYearEmailNo.html', 'utf8');
var contents = fs.readFileSync('newYearEmailNo.html', 'utf8');

var mailOptions = {
    from: '"Сбербано ?" <riarzach47@gmail.com>',
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