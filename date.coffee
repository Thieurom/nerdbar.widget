command: "date +\"%a %d %b\""

refreshFrequency: 10000 # ms

render: (_) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="date">
    <i class="fa fa-calendar"></i>
    <span class="output"></span>
  </div>
  """

update: (output, domEl) ->
  $(".date .output", domEl).text("#{output}")

style: """
  -webkit-font-smoothing: antialiased
  top: 0
  right: 100px
  font-family: 'Hack'
  font-size: 13px
  color: #ddd
 
  .date
    height: 24px
    line-height: 24px
"""
