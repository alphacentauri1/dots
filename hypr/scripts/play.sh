#!/bin/bash
value=$(cat /home/chronos/.state)

# value= $value | tr -d '\n' 

 if [ "$value" == "0" ]; then
   playerctl pause
   echo "1" >/home/chronos/.state
  else
   playerctl play
   echo "0"> /home/chronos/.state
fi
