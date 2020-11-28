class ClassConnectApi
  def get_api(found_url)
    HTTParty.get(found_url)
  end
end
