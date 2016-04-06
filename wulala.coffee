<script lang="coffee">
    # Vue = require 'vue'
    # Vue.use require 'vue-resource'
    NProgress = require 'nprogress'
# 进度条配置
  NProgress.configure
  showSpinner: false
  module.exports =
    data: ->
return {
stations: []
}
route:
  data: (transition)->
_stations = window.appData.location.stations
if _stations.length is 0
# 如果没有取还车点信息, 则发送请求获取
NProgress.start()
window.setTimeout ->
NProgress.done()
transition.next {
  stations: _stations
}
,100
else
# 如果有取还车点信息，则继续
@stations = _stations
activate: (transition)->
window.appData.view.name = @$route.name
window.appData.view.title = '自驾租车'
transition.next()
</script>