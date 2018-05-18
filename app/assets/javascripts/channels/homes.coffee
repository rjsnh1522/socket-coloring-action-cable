App.colors = App.cable.subscriptions.create "HomesChannel",
  connected: ->
    # Called when the subscription is ready for use on the server
    console.log("colors subscribed")
    if localStorage.getItem("yourUserName") != null
      $("#username").html(localStorage.getItem("yourUserName"))
    else
      userName = Math.random().toString(36).slice(-5)
      console.log(userName)
      localStorage.setItem("yourUserName",userName)
      $("#username").html(localStorage.getItem("yourUserName"))
  disconnected: ->
   # Called when the subscription has been terminated by the server
    console.log("disconnected")
  received: (data) ->
    if data.create
      $('#drawing-table').html(data.create)
 
