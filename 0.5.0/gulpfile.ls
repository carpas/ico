require! {
	gulp
	browserify
	\gulp-stylus : stylus
	\gulp-livereload : livereload
	\gulp-autoprefixer : autoprefixer
	\vinyl-source-stream : source
	\gulp-notify : notify
	\gulp-jade : jade
	\gulp-livescript : livescript
	\vinyl-source-stream : source
	\gulp-plumber : plumber
}

destDir = \app/dist

notifyOnError = ->
	notify!.write it.message


gulp
	..task \livescript, !->
		browserify \./app/src/main.ls, do
			extensions: <[.ls]>
		.bundle!
		.on \error, notifyOnError
		.pipe plumber do
			errorHandler: notifyOnError
		.pipe source \js/main.js
		.pipe gulp.dest destDir
		.pipe livereload!


	..task \jade, !->
		gulp
			.src \app/src/index.jade
			.pipe plumber do
				errorHandler: notifyOnError
			.pipe jade!
			.pipe gulp.dest destDir
			.pipe livereload!


	..task \stylus, !->
		gulp
			.src \app/src/main.styl
			.pipe plumber do
				errorHandler: notifyOnError
			.pipe stylus!
			.pipe autoprefixer {
				browsers: ["last 2 versions"]
				-cascade
			}
			.pipe gulp.dest "#destDir/css"
			.pipe livereload!


	..task \default, !->
		livereload.listen!
		gulp
			..watch \app/src/**/*.ls, <[livescript]>
			..watch \app/src/index.jade, <[jade]>
			..watch \app/src/**/*.styl, <[stylus]>
