jQuery(($) ->
  $('#form').submit((event) ->
    event.preventDefault()
    $form = $(this)
    $.ajax({
      url: $form.attr('action')
      type: $form.attr('method')
      data: $form.serialize()
      success: (result, textStatus) ->
        $('#target_name').text(result)
        UIkit.notify({
          message: "Success!!"
          status: 'success'
          timeout: 3000
        })
    })
  )
)

