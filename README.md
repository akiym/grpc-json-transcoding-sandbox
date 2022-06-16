# grpc-json-transcoding-sandbox

```
$ script/genpb.sh
$ docker-compose up
```
```
$ script/test.sh
{
 "content": "hello",
 "severity": "CRITICAL"
}
{
 "content": "",
 "severity": "UNNECESSARY"
}
[{
 "content": "a",
 "severity": "UNNECESSARY"
}
,{
 "content": "b",
 "severity": "UNNECESSARY"
}
,{
 "content": "c",
 "severity": "UNNECESSARY"
}
]{
 "content": "a b",
 "severity": "UNNECESSARY"
}
{
 "responses": [
  {
   "content": "a",
   "severity": "UNNECESSARY"
  }
 ],
 "nextPageToken": "1"
}
{
 "responses": [
  {
   "content": "b",
   "severity": "UNNECESSARY"
  }
 ],
 "nextPageToken": ""
}
{
 "name": "operations/google.showcase.v1beta1.Echo/Wait/CgwIkqGtlQYQiM/44wI=",
 "metadata": {
  "@type": "type.googleapis.com/google.showcase.v1beta1.WaitMetadata",
  "endTime": "2022-06-16T15:47:30.746465160Z"
 },
 "done": false
}
{
 "content": "a"
}
```
