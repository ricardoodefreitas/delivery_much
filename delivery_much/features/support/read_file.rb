module ReadFile
  def read_file_address(environment)
    YAML.load_file("#{Dir.pwd}/features/support/config/#{environment}.yml")
  end
end
