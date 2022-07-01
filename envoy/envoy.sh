#!/bin/bash
docker run -d -p 10000:10000 -v /home/workspace/envoy/envoy.yaml:/etc/envoy/envoy.yaml --name envoy envoyproxy/envoy:v1.21-latest
docker run -d --network=container:envoy --name nginx nginx:latest