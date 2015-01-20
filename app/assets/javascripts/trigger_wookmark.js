$(document).ready(function(){
    var $handler = $('#wookmark_id td');
    var options = {
        container: $('#main'),
        offset: 5,
        outerOffset: 10,
        resizeDelay: 50,
        itemWidth: 260,
        flexibleWidth: 0
    };

    $handler.wookmark(options);
    $handler.wookmark(options);
    $handler.click(function () {
        var newHeight = $('img', this).height() + Math.round(Math.random() * 300 + 30);
        $(this).css('height', newHeight + 'px');

        // Update the layout.
        $handler.wookmark();
    });
});