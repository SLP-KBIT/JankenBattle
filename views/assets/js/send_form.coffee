jQuery(($) ->
  $('#form').submit((event) ->
    event.preventDefault()
    $form = $(this)
    $button = $form.find('button')

    $.ajax({
      url: $form.attr('action')
      type: $form.attr('method')
      data: $form.serialize()
      timeout: 5000

      # 送信前
      beforeSend: (settings) ->
        $button.attr('disabled', true)

      # 応答後
      complete: (textStatus) ->
        $button.attr('disabled', false)

      # 通信成功時
      success: (result, textStatus) ->
        Game.exec(result)
        UIkit.notify({
          message: "Success!!"
          status: 'success'
          timeout: 3000
        })

      # 通信失敗時
      error: (textStatus, error) ->
        UIkit.notify({
          message: "Error!!"
          status: 'danger'
          timeout: 3000
        })
    })
  )
)

