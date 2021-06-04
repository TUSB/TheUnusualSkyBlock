function oh_my_dat:please

#死亡時のcall

#時間でのcall
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Time if data entity @s {PortalCooldown:0} run function entity:enemy/time
#Skillsのcall
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Turn[0].Skills.Damage if data entity @s {HurtTime:5s} run function entity:enemy/damage
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Turn[0].Skills.InBlock anchored eyes unless block ^ ^ ^ air run function entity:enemy/in_block
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Turn[0].Skills.Fire unless data entity @s {Fire:-1s} run function entity:enemy/fire
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Turn[0].Skills.Water if block ~ ~ ~ water run function entity:enemy/water
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Turn[0].Skills.Falling run function entity:enemy/falling
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Turn[0].Skills.Flying if data entity @s {OnGround:0b} run function entity:enemy/flying
