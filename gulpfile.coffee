gulp        = require 'gulp'
coffee      = require 'gulp-coffee'
sass        = require 'gulp-sass'
concat      = require 'gulp-concat'
uglify      = require 'gulp-uglify'
plumber     = require 'gulp-plumber'
imagemin    = require 'gulp-imagemin'
runSequence = require 'run-sequence'
del         = require 'del'
browserify  = require 'browserify'
reactify    = require 'coffee-reactify'
source      = require 'vinyl-source-stream'
buffer      = require 'vinyl-buffer'

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

#--- scripts
gulp.task 'scripts', ->
  browserify
    entries: 'src/scripts/main.coffee'
    transform: [reactify]
  .bundle()
  .pipe source('main.js')
  .pipe buffer()
  .pipe uglify()
  .pipe gulp.dest(build_paths.scripts)

#--- styles
gulp.task 'styles', ->
  gulp.src paths.styles
    .pipe sass()
    .pipe concat('all.css')
    .pipe gulp.dest(build_paths.styles)

#--- images
gulp.task 'images', ->
  gulp.src paths.images
    .pipe imagemin({optimizationLevel: 5})
    .pipe gulp.dest(build_paths.images)

#--- watch
gulp.task 'watch', ->
  gulp.watch paths.scripts, ['scripts']
  gulp.watch paths.styles, ['styles']
  gulp.watch paths.images, ['images']

#--- clean
gulp.task 'clean', (callback) ->
  del [
    build_paths.scripts
    build_paths.styles
    build_paths.images
  ], callback

#--- build
gulp.task 'build',
  [
    'scripts'
    'styles'
    'images'
  ]

#--- default
gulp.task 'default', ->
  runSequence 'clean', 'build', 'watch'

