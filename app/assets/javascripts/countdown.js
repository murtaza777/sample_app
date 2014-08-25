/*
 * Copyright (c) 2014.
 * This code is copyrighted by the author
 * All Rights Reserved. Use and distribution are limited by contract provisions.
 * Author: Murtaza Kheriwala
 */
$(window).load(function() {
$('textarea').keyup(function() {
    var cs = 140 - $(this).val().length;
    $('#characters').text(cs);
});
});