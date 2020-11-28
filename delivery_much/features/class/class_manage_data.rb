require_relative "#{Dir.pwd}/features/support/read_file.rb"

class ManageData
  include ReadFile

  def create_url(number, language)
    file_url = read_file_address('delivery_much_environment')
    if language == 'english'
      find_url = file_url['file_url']['en_url']
    else
      find_url = file_url['file_url']['pt_br_url']
    end
    find_url = find_url.gsub('<number>', number.to_s)
    find_url
  end
end
