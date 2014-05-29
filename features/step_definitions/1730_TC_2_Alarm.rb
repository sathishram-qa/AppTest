
Given(/^I am looking overview page of "(.*?)"$/) do |project_name|
  within (".table-container")do
	page.find('tr', :text => "#{project_name}").click
  	sleep 20
  end
  click_link("Overview")
  sleep 20
end

Given(/^I verify any new alarm has been arrived$/) do
  within (".table-container")do
	  if page.has_content?("No alarms")
	  	puts "No Alarms found"
	  	page.save_screenshot('reports/Noalarms_overview.png')
	  else
	  	page.has_content?("Active")
	  	puts "Alarm present"
	  	page.save_screenshot('reports/alarms_overview.png')
	  end
  end
end