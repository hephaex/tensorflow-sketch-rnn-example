#!/bin/bash

/opt/sketch_demo/backend.py -p 8081 -d /opt/sketch_demo/models/catbus/lstm &
/opt/sketch_demo/backend.py -p 8082 -d /opt/sketch_demo/models/elephantpig/lstm &
/opt/sketch_demo/backend.py -p 8083 -d /opt/sketch_demo/models/flamingo/lstm_uncond &
/opt/sketch_demo/backend.py -p 8084 -d /opt/sketch_demo/models/owl/lstm &
/opt/sketch_demo/app.py
