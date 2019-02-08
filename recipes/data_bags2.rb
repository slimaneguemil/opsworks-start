instance = search("aws_opsworks_instance").first
layer = search("aws_opsworks_layer").first
stack = search("aws_opsworks_stack").first

Chef::Log.info("********** This stack name
 '#{node["opsworks"]["stack"]["name"]}'
**********")
Chef::Log.info("********** This instance's public IP address is
'#{node["opsworks"]["instance"]["hostname"]}' **********")

