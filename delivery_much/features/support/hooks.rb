require 'report_builder'
require 'date'

After do
  evidence = {}
  evidence = { :return_code => @search_return.code, :return_body => @search_return.body }
  embed(evidence, 'text/html')
end

at_exit do
  time = Time.now.to_s
  ReportBuilder.configure do |config|
    config.json_path = "report/report.json"
    config.report_path = "report/cucumber_relatorio"
    config.report_types = [:html]
    config.report_title = 'Cucumber Report Builder - Delivrey Much'
    config.compress_images = false
    config.color = 'indigo'
    config.additional_info = { 'Project name' => 'Delivrey Much - QA Challenge ', 'Platform' => 'API', 'Report generated' => time }
  end
  ReportBuilder.build_report
end
