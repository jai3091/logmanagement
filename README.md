# logmanagement
Log Management for Nginx using Fluentd and Elastic

Linux Environment:

Softwares Required: Bash shell, Docker Docker Compose

1. Execute the shell script with following command: /bin/bash ./build_log_management.sh

2. http://localhost will display the custom landing page of Nginx

3. http://localhost:9200/_cat/indices?v will display the index created on elastic search

4. http://localhost:9200/index_name/_search?pretty=true will display the values indexed in elastic search index

Non Linux Environment

Softwares Required: Docker Docker Compose

1. Checkout the code

2. Go to nginx directory and execute : docker build -t honestbee_nginx:1 . to build nginx image

3. Go to fluentd directory and execute: docker build -t honestbee_fluentd:1 . to build fluentd image

4. From the root location execute: docker-compose up -d to start the containers

5. http://localhost will display the custom landing page of Nginx

6. http://localhost:9200/_cat/indices?v will display the index created on elastic search

7. http://localhost:9200/index_name/_search?pretty=true will display the values indexed in elastic search index
