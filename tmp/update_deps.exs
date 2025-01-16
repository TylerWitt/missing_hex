# Fetch dependencies that needs updating
{dependency_lock, rest_lock} = Map.split(Mix.Dep.Lock.read(), ["plug"])

IO.inspect(Code.ensure_loaded?(Hex.Mix))

Mix.Dep.Fetcher.by_name(["plug"], dependency_lock, rest_lock, [])
