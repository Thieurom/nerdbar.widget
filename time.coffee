command: "date +\"%H:%M\""

refreshFrequency: 10000 # ms

render: (_) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="time">
    <i class="fa fa-clock-o"></i>
    <span class="output"></span>
  </div>
  """

update: (output, domEl) ->
  $(".time .output", domEl).text("#{output}")

style: """
  -webkit-font-smoothing: antialiased
  top: 0
  right: 20px
  font-family: 'Hack'
  font-size: 13px
  color: #ddd
 
  .time
    height: 24px
    line-height: 24px
"""
