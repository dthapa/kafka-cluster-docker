java -cp KafkaOffsetMonitor-assembly-0.2.1.jar \
     com.quantifind.kafka.offsetapp.OffsetGetterWeb \
     --zk 192.168.1.158:2181 \
     --port 8081 \
     --refresh 10.seconds \
     --retain 2.days
