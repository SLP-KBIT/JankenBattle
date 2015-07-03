var gulp = require('gulp');
var coffee = require('gulp-coffee');
var sass = require('gulp-sass');
var concat = require('gulp-concat');
var uglify = require('gulp-uglify');
var plumber = require('gulp-plumber');

var paths = {
  scripts: 'src/scripts/**/*.coffee',
  styles: 'src/styles/**/*.sass',
  images: 'src/images/**/*'
};

var build_paths = {
  scripts: 'public/assets/javascripts',
  styles: 'public/assets/styles',
  images: 'public/assets/images'
};

gulp.task('scripts', function() {
  return gulp.src(paths.scripts)
    .pipe(coffee())
    .pipe(uglify())
    .pipe(concat('all.min.js'))
    .pipe(gulp.dest(build_paths.scripts));
});

gulp.task('styles', function() {
  return gulp.src(paths.styles)
    .pipe(sass())
    .pipe(concat('all.min.css'))
    .pipe(gulp.dest(build_paths.styles));
});

gulp.task('default', ['scripts', 'styles'])

