require! {
	gulp
	browserify
	\gulp-stylus : stylus
	\gulp-livereload : livereload
	\gulp-autoprefixer : autoprefixer
	\gulp-notify : notify
	\gulp-jade : jade
	\vinyl-source-stream : source
	\gulp-elm : elm
	\gulp-plumber : plumber
}

destDir = \app/dist

notifyError = ->
	notify.onError("Error: <%= error.message %>")


gulp
	..task \elm-init, elm.init


	..task \elm, <[elm-init]>, !->
		gulp
			.src \app/src/main.elm
			.pipe plumber do
				*errorHandler: notifyError!
			.pipe elm.make()
			.pipe gulp.dest \app/dist
			.pipe livereload()


	..task \jade, !->
		gulp
			.src \app/src/index.jade
			.pipe plumber do
				*errorHandler: notifyError!
			.pipe jade()
			.pipe gulp.dest destDir
			.pipe livereload()


	..task \stylus, !->
		gulp
			.src \app/src/main.styl
			.pipe plumber do
				*errorHandler: notifyError!
			.pipe stylus()
			.pipe autoprefixer {
				browsers: ["last 2 versions"]
				-cascade
			}
			.pipe gulp.dest destDir
			.pipe livereload!


	..task \default, !->
		livereload.listen!
		gulp
			..watch \app/src/**/*.elm, <[elm]>
			..watch \app/src/index.jade, <[jade]>
			..watch \app/src/main.styl, <[stylus]>
