# python
This is custom python agent images.

## Base
python2.7

## Build

### tingyun python agent
```
docker build -t tingyun/python2.7:0.7.7 .
```
### oneapm python agent
```
#
```

### Run

### tingyun
```
docker run -i --env TINGYUN_LICENSE_KEY=your_key --env TINGYUN_APP_NAME=your_appname -d -P -t tingyun/python2.7:0.7.7 tingyun-admin run-program python ${TINGYUN_HOME}/server.py
```

### oneapm
```
#
