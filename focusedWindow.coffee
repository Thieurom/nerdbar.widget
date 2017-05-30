command: "echo $(/usr/local/bin/kwmc query space active tag)"

refreshFrequency: 1000 # ms

render: (_) ->
  """
  <link rel="stylesheet" href="./assets/flaticon/font/flaticon.css" />
  <div class="fw"></div>
  """

update: (output, domEl) ->
  $(".fw", domEl).text("#{output}".substr(6))

style: """
  -webkit-font-smoothing: antialiased
  top: 0
  left: 0
  right: 0
  width: auto
  max-width: 40%
  height: 24px
  margin-left: auto
  margin-right: auto
  font-family: 'Hack'
  font-size: 13px
  line-height: 24px
  color: #ddd

  .fw
    text-align: center
    overflow: hidden
    text-overflow: ellipsis
    white-space: nowrap
"""
