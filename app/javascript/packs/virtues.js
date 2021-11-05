$(function () {
  $(document).on('change', '.remote-select', function (e) {
    let target = $(this).attr('data-target');
    let url = `/character_class/${$(this).find(":selected").attr("value")}/virtues`;
    // TODO prevent from sending the request if {$(this).find(":selected").attr("value")} is null
    if (url) {
      $.ajax({
        url: url,
        method: 'GET',
        success: function (json) {
          let target_select = $(target);
          target_select.empty();
          json.map(function (item) {
            value = $('<option></option>').attr('value', item.id).text(item.name);
            target_select.append(value)
          });
          target_select.trigger("chosen:updated")
        },
        error: function () {
        }
      })
    }
  })
});
