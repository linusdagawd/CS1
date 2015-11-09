module TrafficLight

data TrafficLight = red|
amber|
green

nextColor: TrafficLight -> TrafficLight
nextColor red = green
nextColor green = amber
nextColor amber = red


