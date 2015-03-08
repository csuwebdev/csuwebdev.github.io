$(document).on 'ready page:load', ()->
  $('#calendar').fullCalendar
    googleCalendarApiKey: 'AIzaSyBAT20M7J1v1Z4HAJx246OB6a1CN-G3Afo',
    events: {
        googleCalendarId: 'ra5695ol5jtr1hdaio1855jlm8@group.calendar.google.com'
    }
