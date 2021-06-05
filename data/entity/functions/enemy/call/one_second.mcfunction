###Skillsのcall(1秒間隔
execute if data storage mob_data: AI.Turn[0].Skills.Damage if data entity @s {HurtTime:5s} run function entity:enemy/call/damage
execute if data storage mob_data: AI.Turn[0].Skills.InBlock anchored eyes unless block ^ ^ ^ air run function entity:enemy/call/in_block
execute if data storage mob_data: AI.Turn[0].Skills.Fire unless data entity @s {Fire:-1s} run function entity:enemy/call/fire
execute if data storage mob_data: AI.Turn[0].Skills.Water if block ~ ~ ~ water run function entity:enemy/call/water
execute if data storage mob_data: AI.Turn[0].Skills.Falling run function entity:enemy/call/falling
execute if data storage mob_data: AI.Turn[0].Skills.Flying if data entity @s {OnGround:0b} run function entity:enemy/call/flying