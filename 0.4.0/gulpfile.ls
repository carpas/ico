require! {
	gulp
	browserify
	\gulp-stylus : stylus
	\gulp-livereload : livereload
	\gulp-autoprefixer : autoprefixer
	\gulp-notify : notify
	\gulp-jade : jade
	\vinyl-source-stream : source
}


gulp.task \default, do
	livereload.listen!