#Function
execute store result score _ _ run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Tick
execute if score _ _ matches 20 run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 0.75 1.5
execute if score _ _ matches 19 run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 0.75 1.525
execute if score _ _ matches 18 run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 0.75 1.55
execute if score _ _ matches 17 run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 0.75 1.575
execute if score _ _ matches 16 run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 0.75 1.6
execute if score _ _ matches 15 run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 0.75 1.625
execute if score _ _ matches 14 run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 0.75 1.65
execute if score _ _ matches 13 run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 0.75 1.675
execute if score _ _ matches 12 run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 0.75 1.7
execute if score _ _ matches 11 run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 0.75 1.725
execute if score _ _ matches 10 run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 0.75 1.75
execute if score _ _ matches 9 run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 0.75 1.775
execute if score _ _ matches 8 run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 0.75 1.8
execute if score _ _ matches 7 run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 0.75 1.825
execute if score _ _ matches 6 run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 0.75 1.85
execute if score _ _ matches 5 run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 0.75 1.875
execute if score _ _ matches 4 run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 0.75 1.9
execute if score _ _ matches 3 run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 0.75 1.925
execute if score _ _ matches 2 run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 0.75 1.95
execute if score _ _ matches 1 run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 0.75 1.975
execute if score _ _ matches 0 run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 0.75 2
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Tick int 0.99999 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Tick
particle dust 0 1 1 0.8 ~ ~1 ~ 0.35 0.6 0.35 0 10 force @a[distance=..32,tag=ShowParticles]
