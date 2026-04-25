extends Node2D

var lights_on := 0
var total_lights := 4

signal all_lights_on


func light_turned_on():
	lights_on += 1
	check_lights()


func light_turned_off():
	lights_on -= 1


func check_lights():
	if lights_on >= total_lights:
		all_lights_on.emit()
