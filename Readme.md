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