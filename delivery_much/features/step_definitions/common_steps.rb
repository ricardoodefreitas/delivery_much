
Quando('realizar a consulta atraves da API disponivel') do
  found_url = constructor_manage_data.create_url(@number, @language)
  @search_return = constructor_connect_api.get_api(found_url)
end


