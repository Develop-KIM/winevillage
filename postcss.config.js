const purgecss = require('@fullhuman/postcss-purgecss')({
    content: [
        './src/main/webapp/WEB-INF/views/**/*.jsp', // JSP 파일 경로
        './src/main/resources/static/**/*.js', // JavaScript 파일 경로
        './src/main/resources/static/**/*.html', // HTML 파일 경로 (필요한 경우)
    ],
    defaultExtractor: content => content.match(/[\w-/:]+(?<!:)/g) || [],
});

module.exports = {
    plugins: [
        require('autoprefixer'),
        ...(process.env.NODE_ENV === 'production' ? [purgecss] : []),
    ],
};
