const gulp = require('gulp');
const path = require('path');
const fs = require('fs');
const livereload = require('gulp-livereload');
const inject = require('gulp-inject-string');
const juice = require('juice')

livereload({
    start: true
});

var liveReloader = function() {
    livereload.reload();
};

gulp.task('inject', function() {
    var css = fs.readFileSync('static/style.css', 'utf8');
    fs.writeFileSync("index.html", '');
    return gulp
        .src(path.join(__dirname, 'static', '/index.html'))
        .pipe(inject.after('<head>', '<style>' + css + '</style>'))
        .pipe(gulp.dest(__dirname))
});

gulp.task('inline', ['inject'], function() {
    var html = fs.readFileSync('index.html', 'utf8');

    var result = juice(html);

    fs.writeFileSync("index.html", result);
});

gulp.task('reload', function() {
    liveReloader();
});

gulp.task('watch', function() {
    livereload.listen();
    gulp.watch([
        path.join(__dirname, 'static', '/*.html'),
        path.join(__dirname, 'static', '/*.css')
    ], ['inline', 'reload']);
});
