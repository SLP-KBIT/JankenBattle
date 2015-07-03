gulp = require 'gulp'
coffee = require 'gulp-coffee'
sass = require 'gulp-sass'
concat = require 'gulp-concat'
uglify = require 'gulp-uglify'
plumber = require 'gulp-plumber'
imagemin = require 'gulp-imagemin'
runSequence = require 'run-sequence'
del = require 'del'

paths = {
  scripts: 'src/scripts/**/*.coffee'
  styles: 'src/styles/**/*.sass'
  images: 'src/images/**/*'
}

build_paths = {
  scripts: 'public/assets/javascripts'
  styles: 'public/assets/styles'
  images: 'public/assets/images'
}

gulp.task 'scripts', ->
  gulp.src paths.scripts
    .pipe coffee()
    .pipe uglify()
    .pipe concat('all.min.js')
    .pipe gulp.dest(build_paths.scripts)

gulp.task 'styles', ->
  gulp.src paths.styles
    .pipe sass()
    .pipe concat('all.min.css')
    .pipe gulp.dest(build_paths.styles)

gulp.task 'images', ->
  gulp.src paths.images
    .pipe imagemin({optimizationLevel: 5})
    .pipe gulp.dest(build_paths.images)

gulp.task 'watch', ->
  gulp.watch paths.scripts, ['scripts']
  gulp.watch paths.styles, ['styles']
  gulp.watch paths.images, ['images']

gulp.task 'clean', ->
  del [
    build_paths.scripts
    build_paths.styles
    build_paths.images
  ]

gulp.task 'build',
  [
    'scripts'
    'styles'
    'images'
  ]

gulp.task 'default', ->
  runSequence [
    'watch'
    'clean'
    'build'
  ]

