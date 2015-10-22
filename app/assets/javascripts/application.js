// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery-ui
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .
//= require bootstrap
//= require_tree ../../../vendor/assets/javascripts
//= require cocoon
//= require underscore
//= require gmaps/google
//= require therubyracer

// Execute JavaScript on page load
// Execute JavaScript on page load
$(function() {
    $('#phoneNumber').intlTelInput({
        responsiveDropdown: true,
        autoFormat: true,
        utilsScript: 'assets/intl-phone/libphonenumber/build/utils.js'
    });
    var $form = $('#contactform'),
        $submit = $('#contactform input[type=submit]');

    // Intercept form submission
    $form.on('submit', function(e) {
        // Prevent form submission and repeat clicks
        e.preventDefault();
        $submit.attr('disabled', 'disabled');

        // Submit the form via ajax
        $.ajax({
            url:'/call',
            method:'POST',
            data: $form.serialize()
        }).done(function(data) {
            alert(data.message);
        }).fail(function() {
            alert('There was a problem calling you - please try again later.');
        }).always(function() {
            $submit.removeAttr('disabled');
        });

    });
});
