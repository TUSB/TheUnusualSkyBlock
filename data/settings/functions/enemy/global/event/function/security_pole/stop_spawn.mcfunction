#Function
execute store result score _ _ if entity @e[tag=Mob,tag=SecurityPole,distance=..12]
execute if score _ _ matches ..0
