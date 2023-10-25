/* Needed gulp config */
var gulp = require('gulp'),
    sass = require('gulp-sass'),
    compass = require('compass'),
    sourcemaps = require('gulp-sourcemaps'),
    // neat = require('node-neat').includePaths,
    uglify = require('gulp-uglify'),
    rename = require('gulp-rename'),
    notify = require('gulp-notify'),
    minifycss = require('gulp-minify-css'),
    concat = require('gulp-concat'),
    plumber = require('gulp-plumber'),
    browserSync = require('browser-sync'),
    fs = require('fs'),
    browserify = require('browserify'),
    watchify = require('watchify'),
    reload = browserSync.reload;

/* Setup scss path */
// var paths = {
//     scss: 'src/scss/*.scss'
// };

compass.compile(function(err, stdout, stderr) {
    console.log('done');
});

/* Scripts task */
gulp.task('js', function() {
  return gulp.src([
    /* Add your JS files here, they will be combined in this order */
    'src/js/jquery.min.js',
    'src/js/bootstrap.js',
    'src/js/common.js',
    'src/js/jquery.mmenu.min.all.js',
    'src/js/jquery.panelslider.js',
    'src/js/wow.js',
    'src/js/jquery.lazyload.js',
    'src/js/owl.carousel.js',
    'src/js/jquery.matchHeight.js'
    ])
    .pipe(sourcemaps.init())
    .pipe(concat('main.js'))
    .pipe(gulp.dest('dist/js'))
    .pipe(rename({suffix: '.min'}))
    .pipe(uglify())
    .pipe(sourcemaps.write('.'))
    .pipe(gulp.dest('dist/js'));
    // .pipe(reload({stream:true}));
});

/* Scripts task */
// gulp.task('js-home', function() {
//   return gulp.src([
//     /* Add your JS files here, they will be combined in this order */
//     // 'src/js/revslider.js',
//     // 'src/js/jquery.themepunch.revolution.min.js',
//     // 'src/js/jquery.themepunch.tools.min.js',
//     'src/js/jquery.lazyload.js',
//     // 'src/js/index.js'
//     ])
//     .pipe(sourcemaps.init())
//     .pipe(concat('home.js'))
//     .pipe(gulp.dest('dist/js'))
//     .pipe(rename({suffix: '.min'}))
//     .pipe(uglify())
//     .pipe(sourcemaps.write('.'))
//     .pipe(gulp.dest('dist/js'));
//     // .pipe(reload({stream:true}));
// });


/* Sass task */
// gulp.task('sass', function () {  
//     gulp.src('src/scss/style.scss')
//     .pipe(plumber())
//     .pipe(sourcemaps.init())
//     .pipe(sass({
//         // includePaths: ['scss'].concat(neat)
//         includePaths: require('node-neat').includePaths
//     }))
//     .pipe(gulp.dest('dist/css'))
//     .pipe(rename({suffix: '.min'}))
//     .pipe(minifycss())
//     .pipe(sourcemaps.write('.'))
//     .pipe(gulp.dest('dist/css'))
//     /* Reload the browser CSS after every change */
//     .pipe(reload({stream:true}));
// });

gulp.task('scss', function () {
 return gulp.src('src/scss/style.scss')
    .pipe(plumber())
    .pipe(sourcemaps.init())
    .pipe(sass({outputStyle: 'compressed'}).on('error', sass.logError))
    .pipe(sourcemaps.write('.'))
    .pipe(gulp.dest('dist/css'))
    /* Reload the browser CSS after every change */
    .pipe(reload({stream:true}));
});

/* Prepare Browser-sync for localhost */
gulp.task('browser-sync', function() {
    browserSync.init(['dist/css/*.css', 'dist/js/*.js'], {        
        server: {
            baseDir: './'
        }
        
    });
});

/* Reload task */
gulp.task('bs-reload', function () {
    browserSync.reload();
    done();
});

/* Watch scss, js and html files, doing different things with each. */
gulp.task('default', ['scss', 'js', 'browser-sync'], function () {
    /* Watch scss, run the scss task on change. */
    gulp.watch(['src/scss/*.scss', 'src/scss/**/*.scss'], ['scss'])
    /* Watch app.js file, run the scripts task on change. */
    gulp.watch(['src/js/*.js'], ['js'])
    // gulp.watch(['src/js/*.js'], ['js-home'])
    /* Watch .html files, run the bs-reload task on change. */
    gulp.watch(['*.html'], ['bs-reload']);
});
