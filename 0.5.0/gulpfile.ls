require! {
	gulp
	browserify
	\gulp-stylus : stylus
	\gulp-autoprefixer : autoprefixer
	\vinyl-source-stream : source
	\gulp-notify : notify
	\gulp-jade : jade
	\gulp-livescript : livescript
	\gulp-plumber : plumber
	\browser-sync : bs
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
		.pipe bs.stream!


	..task \jade, !->
		gulp
			.src \app/src/index.jade
			.pipe plumber do
				errorHandler: notifyOnError
			.pipe jade!
			.pipe gulp.dest destDir
			.pipe bs.stream!


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
			.pipe bs.stream!


	..task \default, !->
		bs.init do
			proxy: "localhost:8000"
		gulp
			..watch \app/src/**/*.ls, <[livescript]>
			..watch \app/src/index.jade, <[jade]>
			..watch \app/src/**/*.styl, <[stylus]>
