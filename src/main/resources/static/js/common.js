// 로딩
window.onload = function () {
    clearInterval(loading);
    $(".loading").fadeOut(function () {
        $(".loading").remove();
    });
}