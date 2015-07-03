var gulp = require('gulp');
var coffee = require('gulp-coffee');
var sass = require('gulp-sass');
var concat = require('gulp-concat');
var uglify = require('gulp-uglify');
var plumber = require('gulp-plumber');
var imagemin = require('gulp-imagemin');

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

gulp.task('images', function() {
  return gulp.src(paths.images)
    .pipe(imagemin({optimizationLevel: 5}))
    .pipe(gulp.dest(build_paths.images));
});

gulp.task('watch', function() {
  gulp.watch(paths.scripts, ['scripts']);
  gulp.watch(paths.styles, ['styles']);
  gulp.watch(paths.images, ['images']);
});

gulp.task('default', ['watch', 'scripts', 'styles', 'images'])

