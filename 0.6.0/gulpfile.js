"use strict";

let gulp = require('gulp');
let browserify = require('browserify');
let stylus = require('gulp-stylus');
let autoprefixer = require('gulp-autoprefixer');
let source = require('vinyl-source-stream');
let notify = require('gulp-notify');
let jade = require('gulp-jade');
let plumber = require('gulp-plumber');
let bs = require('browser-sync');
let babelify = require("babelify");

let destDir = "app/dist";

function notifyOnError(msg) {
  notify().write(msg.message)
};


gulp.task("javascript", () => {
  browserify("./app/src/main.js", {debug: true})
    .transform(babelify)
    .bundle()
    .on("error", notifyOnError)
    .pipe(plumber({
      errorHandler: notifyOnError
    }))
    .pipe(source("js/main.js"))
    .pipe(gulp.dest(destDir))
    .pipe(bs.stream())
});


gulp.task("jade", () => {
  gulp
    .src("app/src/index.jade")
    .pipe(plumber({
      errorHandler: notifyOnError
    }))
    .pipe(jade())
    .pipe(gulp.dest(destDir))
    .pipe(bs.stream())
});


gulp.task("stylus", () => {
  gulp
    .src("app/src/main.styl")
    .pipe(plumber({
      errorHandler: notifyOnError
    }))
    .pipe(stylus())
    .pipe(autoprefixer({
      browsers: ["last 2 versions"],
      cascade: false
    }))
    .pipe(gulp.dest(destDir + "/css"))
    .pipe(bs.stream())
});


gulp.task("default", () => {
  bs.init({
    proxy: "localhost:8000"
  });

  gulp.watch("app/src/**/*.js", ["javascript"]);
  gulp.watch("app/src/index.jade", ["jade"]);
  gulp.watch("app/src/**/*.styl", ["stylus"]);
});
