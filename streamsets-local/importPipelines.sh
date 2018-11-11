curl -X POST  -H "kbn-xsrf:true" -H "Content-Type: application/json" -H "Accept: application/json" -d @/container-wrapper/config/savedObjects.json kibana:5601/api/saved_objects/_bulk_create
