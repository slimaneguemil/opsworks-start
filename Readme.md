How to use 


********* to test run_script recipe ******
> sudo cat /tmp/run-script-demo/helloworld.txt
> Hello, World

********* to test manage_service  *********
update & execute recipe then
> service cronnd status
> crond is stopped

> sudo service crond start
starting crond: [ OK ]

********* to test custom_json ************
update & execute recipe with custom chef json
{
"customer-id": "0123",
"invoice-number": "9876",
"line-items": {
"line-1": "tractor",
"line-2": "passenger car",
"line-3": "trailer"
}
}
the logs should display :
[2015-11-14T14:18:30+00:00] INFO: ********** For customer '0123' invoice '9876'
**********
[2015-11-14T14:18:30+00:00] INFO: ********** Invoice line number 1 is a 'tractor'
**********
[2015-11-14T14:18:30+00:00] INFO: ********** Invoice line number 2 is a 'passenger car'
**********
[2015-11-14T14:


************* test data_bags ******************
run the recipe it should display :

[2015-11-14T14:39:06+00:00] INFO: ********** This instance's instance ID is
'f80fa119-81ab-4c3c-883d-6028e52c89EX' **********
[2015-11-14T14:39:06+00:00] INFO: ********** This instance's public IP address is
'192.0.2.0' **********
[2015-11-14T14:39:06+00:00] INFO: ********** This instance belongs to the layer
'MyCookbooksDemoLayer' **********
[2015-11-14T14:39:06+00:00] INFO: ********** This instance belongs to the stack
'MyCookbooksDemoStack' **********
[2015-11-14T14:39:06+00:00] INFO: ********** This stack gets its cookbooks from
'https://s3.amazonaws.com/opsworks-demo-bucket/opsworks_cookbook_demo.tar.gz'
**********

******* test iteration_demo.rb 
it should disply :

[2015-11-16T19:56:56+00:00] INFO: ********** '["url", "https://s3.amazonaws.com/
opsworks-demo-bucket/opsworks_cookbook_demo.tar.gz"]' **********
[2015-11-16T19:56:56+00:00] INFO: ********** '["username", "secret-key-value"]'
**********
[2015-11-16T19:56:56+00:00] INFO: ********** '["password", "secret-access-key-value"]'
**********
[2015-11-16T19:56:56+00:00] INFO: ********** '["ssh_key", nil]' **********
[2015-11-16T19:56:56+00:00] INFO: ********** '["revision", nil]' **********