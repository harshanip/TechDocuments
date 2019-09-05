import datetime
import time
import requests
import sys

url =  str(sys.argv[1])
print url
total_response_time=0;
total_requests_count=0;
failure_requests_count=0;
max_res_time = 0;
above_1_sec = 0;
for num in range(1,11):
        resp = requests.get(url)
        response = ""
        if resp.status_code >= 200 and resp.status_code < 300:
                response = str(num) + " || Status : "+str(resp.status_code)+ " || Response Time (ms) : "+str(resp.elapsed.total_seconds()*1000)
                total_response_time+=resp.elapsed.total_seconds()
                total_requests_count+=1

                if(resp.elapsed.total_seconds() > 0.3):
                        above_1_sec +=1

                if(max_res_time < resp.elapsed.total_seconds()) :
                        max_res_time = resp.elapsed.total_seconds()
        else:
                response = str(num) + " || Status : "+str(resp.status_code) +"|| Response : "+resp.text
                failure_requests_count+=1;
        print response
        print dir(resp.elapsed)
print '-----------------------Summary-----------------------'
print 'Tested on                       : ' + str(time.strftime("%Y/%m/%d %H:%M:%S"))
print 'Average response time (seconds) : ' + str(total_response_time/total_requests_count)
print 'Maximum response time (seconds) : ' + str(max_res_time)
print 'No of requests above 300 ms     : ' +str(above_1_sec)
print 'Successful messages             : ' +str(total_requests_count)
print 'Failed messages                 : ' + str(failure_requests_count)
print '-----------------------------------------------------'
