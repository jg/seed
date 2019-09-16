#!/bin/bash
sudo docker-compose exec rails bundle
sudo docker-compose exec rails bin/rails console
