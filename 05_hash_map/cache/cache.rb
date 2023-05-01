def take_server_data(url)
  url
end

def get_url(url)
  cache = {}
  if cache.key?(url)
    p cache[url]
  else
    server_data = take_server_data(url)
    cache[url] = server_data
    p server_data
  end
end

get_url('google')
get_url('yahoo')