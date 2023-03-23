% import matlab.net.http.RequestLine
% url = 'http://127.0.0.1/api/frames';
% reqline = RequestLine('get',url,'HTTP/1.1');
% string(reqline)

i=1
while true
    
    request = matlab.net.http.RequestMessage;
    uri = matlab.net.URI('http://127.0.0.1/api/frames');
    r = send(request,uri);
    value(i,:) = r.Body.Data.readings
    pause(0.1)

    i=i+1
end