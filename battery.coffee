command: "pmset -g batt | egrep '([0-9]+\%).*' -o --colour=auto | cut -f1 -d';'"

refreshFrequency: 10000 # ms

render: (_) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="battery">
    <i class="icon"></i>
    <span class="output"></span>
  </div>
  """

update: (output, domEl) ->
  $(".battery .output", domEl).text("#{output}")
  $icon = $(".battery i.icon", domEl)
  $icon.removeClass().addClass("icon")
  $icon.addClass("fa #{@icon(parseInt(output))}")

icon: (bat) ->
  return if bat > 90
    "fa-battery-full"
  else if bat > 70
    "fa-battery-three-quarters"
  else if bat > 40
    "fa-battery-half"
  else if bat > 20
    "fa-battery-quarter"
  else
    "fa-battery-empty"

style: """
  -webkit-font-smoothing: antialiased
  top: 0
  right: 220px
  font-family: 'Hack'
  font-size: 13px
  color: #ddd
 
  .battery
    height: 24px
    line-height: 24px
"""
