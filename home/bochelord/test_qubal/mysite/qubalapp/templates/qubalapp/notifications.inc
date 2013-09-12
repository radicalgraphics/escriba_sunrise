<!--     <script>
      // Random Messages
      var example = {
        messages: [
          '+2 XP - First login of the day.',
          'Just do it.',
          'Why are you not using this?!',
          'Soda is bad.',
          "I'm sorry dave, I'm afraid I can't let you do that.",
          'There are only three rules.',
          'Do you hear me now?',
          'You should fork this!',
          'You should star this!',
          'Holy cow, another alert!'
        ],
        positions: [
          'bottom-right',
          'bottom-left',
          'top-right',
          'top-left',
          'center'
        ],
        styles: [
          'info',
          'success',
          'warning',
          'danger',
          'inverse',

          // custom
          'bangTidy',
          'blackgloss'
        ]
      };

</script> -->
<div class="notifications mid-right"></div>
<script>
{% for notification in notifications.all %}
    $('.notifications').notify({
      message: { text: '{{ notification.description }}' }, type: 'success' , fadeOut: {enabled: true, delay: {{ forloop.counter }} * 3000 }
    }).show();
{% endfor %}

</script>