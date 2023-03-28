//= require jquery
//= require moment
//= require fullcalendar

$(function () {
    $(document).on('turbolinks:load', function () {
        function eventCalendar() {
            return $('#calendar').fullCalendar({});
        };
        function clearCalendar() {
            $('#calendar').html('');
        };
        $(document).on('turbolinks:load', function () {
          eventCalendar();
        });
        $(document).on('turbolinks:before-cache', clearCalendar);
    });
});
