command: "./spaces.sh"

refreshFrequency: 1000 # ms

render: (_) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="as">
    <i class="fa fa-bars"></i>
    <ul class="list"></ul>
  </div>
  """

update: (output, domEl) ->
  active = parseInt output.split('|')[0]
  total = parseInt output.split('|')[1]
  spaceList = $("ul.list")
  spaceList.empty()
  @populate spaceList, active, total

populate: (list, active, total) ->
  for i in [1..total]
    if i is active
      item = $('<li class="list__item list__item--active">')
    else
      item = $('<li class="list__item">')
    list.append(item.text(i))

style: """
  -webkit-font-smoothing: antialiased
  top: 0
  left: 20px
  font-family: 'Hack'
  font-size: 13px
  color: #ddd
 
  .as
    height: 24px
    line-height: 24px

    .list
      list-style-type: none
      display: inline-block
      margin: 0
      padding: 0

      .list__item
        display: inline-block
        width: 24px
        height: 24px
        line-height: 24px
        text-align: center

        &--active
          background-color: #0F6288

    .icon
      font-size: 12px
"""
