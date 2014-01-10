current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "ankit_rakha"
client_key               "#{current_dir}/ankit_rakha.pem"
validation_client_name   "ljluka-validator"
validation_key           "#{current_dir}/ljluka-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/ljluka"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
