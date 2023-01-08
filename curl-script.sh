
#!/bin/bash
START=$(date +%s%6N)
echo “Time $START microseconds"
# do something
# start your script work here
curl hello-world.info/?[1-10]
# your logic ends here
END=$(date +%s%6N)
echo “Time $END microseconds"
DIFF=$(( $END - $START ))
echo "It took $DIFF microseconds"