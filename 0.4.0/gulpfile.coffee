gulp = require 'gulp'
browserify = require 'browserify'
concat = require 'gulp-concat'
jade = require 'gulp-jade'
stylus = require 'gulp-stylus'
source = require 'vinyl-source-stream'
jest = require 'gulp-jest'
liveReload = require 'gulp-livereload'
notify = require 'gulp-notify'


# gulp.task 'coffee-browserify', =>
# 	browserify './app/src/components/app.coffee', {
# 		extensions: ['.coffee']
# 	}
# 	.ignore "__tests__"
# 	.bundle()
# 	.on "error", (err) =>
# 		console.log err
# 		notify().write err
# 	.pipe source('app.min.js')
# 	.pipe gulp.dest("./app/dist")
# 	.pipe liveReload()


# gulp.task 'jade', =>
# 	gulp.src './app/src/index.jade'
# 		.pipe jade()
# 		.pipe gulp.dest('./app/dist')
		# .pipe liveReload()


# gulp.task 'stylus', =>
# 	gulp.src './app/src/app.sass'
# 		.pipe sass({style: 'compressed', errLogToConsole: false, onError: (err) => notify().write(err)})
# 		.pipe gulp.dest('./app/dist')
# 		.pipe liveReload()


gulp.task 'default', =>
	liveReload.listen()
	gulp.watch './app/src/**/*.coffee', ['coffee-browserify']
	gulp.watch './app/src/**/*.sass', ['sass']
	gulp.watch './app/src/index.jade', ['jade']