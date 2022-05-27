require 'aws-sdk-core'
require 'aws-sdk-ssoadmin'

aws_access_key_id=ENV['AWS_ACCESS_KEY_ID']
aws_secret_access_key=ENV['AWS_SECRET_ACCESS_KEY'] 
region_name=ENV['REGION_NAME']

credentials = Aws::Credentials.new(aws_access_key_id, aws_secret_access_key)

puts credentials
client = Aws::SSOAdmin::Client.new(
    region: region_name,
    credentials: credentials   
)

resp = client.list_instances({max_results: 10})
puts resp.instances #=> Array
puts resp.instances[0].instance_arn #=> String
puts resp.instances[0].identity_store_id #=> String
puts resp.next_token #=> String