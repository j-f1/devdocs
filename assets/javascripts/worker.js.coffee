#= require worker/paths.coffee

@addEventListener 'install', (event) ->
  event.waitUntil(
    caches
      .open 'v1'
      .then (cache) ->
        cache.addAll [
          '/'
        ].concat @cache_paths
 )