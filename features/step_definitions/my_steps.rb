Given(/^I have a Package which consists of a PDF and MXF file$/) do
  puts 'hello from the first step'
end

And(/^I FTP these files to location (.*)$/) do |location|
  puts 'hello from the first step'
end

When(/^I send a SOAP request to (.*) with following request:$/) do |endpoint, table|
  # table is a table.hashes.keys # => [:"test_operation", :"send_from_agent_A", :"send_from_agent_B]
  puts 'hello from the first step'
end

Then(/^I should get a success result from the SOAP request$/) do
  puts 'hello from the first step'
end

And(/^I verify files are no longer in "\\\\networkshare\\"$/) do
  puts 'hello from the first step'
end