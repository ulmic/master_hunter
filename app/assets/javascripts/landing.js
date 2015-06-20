//= require landing/
//= require jquery.dropotron.min.js
//= require jquery.scrollgress.min.js
//= require skel.min.js

$(function() {
    $('.tablist .tab a').click(function(){
        $('.tablist .tab').removeClass('active');
        $(this).parent().addClass('active');
        var elId = $(this).data('tab-id');
        $('.tab-pane').removeClass('active');
        $('#' + elId).addClass('active');
        return false;
    });
});
