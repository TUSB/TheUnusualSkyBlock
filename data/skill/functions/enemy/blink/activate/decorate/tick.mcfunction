execute as @e[scores={BlinkSubTimer=1..}] run function skill:enemy/blink/activate/decorate/0

execute if entity @e[scores={BlinkSubTimer=1..},limit=1] run schedule function skill:enemy/blink/activate/decorate/tick 1t replace