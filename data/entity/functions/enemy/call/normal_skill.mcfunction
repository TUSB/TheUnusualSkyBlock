###skill処理部
##Target処理
execute store result storage mob_data: AI.Turn[0].Target.Radius_check int 1 run data get storage mob_data: AI.Turn[0].Target.Radius 10
execute if data storage mob_data: AI.Turn[0].Target{Look:"player"} facing entity @p feet run function entity:enemy/call/ai_skill/player
execute if data storage mob_data: AI.Turn[0].Target{Look:"enemy"} facing entity @e[tag=Mob,distance=0.01..,sort=nearest,limit=1] feet run function entity:enemy/call/ai_skill/enemy
execute if data storage mob_data: AI.Turn[0].Target{Look:"all"} facing entity @e[predicate=entity:all_mob,distance=0.01..,sort=nearest,limit=1] feet run function entity:enemy/call/ai_skill/all

##Move処理

##skill処理

##Turn exit確認
#Loopによるexit
execute if data storage mob_data: AI.Turn[0].Exit.LoopCount store result storage mob_data: AI.Turn[0].Exit.LoopCount int 0.99999 run data get storage mob_data: AI.Turn[0].Exit.LoopCount 1
execute if data storage mob_data: AI.Turn[0].Exit{LoopCount:0} run data modify storage mob_data: AI.Turn append from storage mob_data: AI.Turn[0]
execute if data storage mob_data: AI.Turn[0].Exit{LoopCount:0} run data remove storage mob_data: AI.Turn[-1].Exit.LoopCount
execute if data storage mob_data: AI.Turn[0].Exit{LoopCount:0} run data remove storage mob_data: AI.Turn[0]
execute if data storage mob_data: AI.Turn[0].Exit.Loop unless data storage mob_data: AI.Turn[0].Exit.LoopCount store result storage mob_data: AI.Turn[0].Exit.LoopCount int 0.99999 run data get storage mob_data: AI.Turn[0].Exit.Loop 1
#Targetによるexit
execute if data storage mob_data: AI.Turn[0].Exit{Half:"up"} positioned ^ ^1000 ^ if entity @e[tag=Target,distance=..1000] run data modify storage mob_data: AI.Turn[0].Exit merge value {call_Exit:1b}
execute if data storage mob_data: AI.Turn[0].Exit{Half:"down"} positioned ^ ^-1000 ^ if entity @e[tag=Target,distance=..1000] run data modify storage mob_data: AI.Turn[0].Exit merge value {call_Exit:1b}
execute if data storage mob_data: AI.Turn[0].Exit{Half:"front"} positioned ^ ^ ^1000 if entity @e[tag=Target,distance=..1000] run data modify storage mob_data: AI.Turn[0].Exit merge value {call_Exit:1b}
execute if data storage mob_data: AI.Turn[0].Exit{Half:"back"} positioned ^ ^ ^-1000 if entity @e[tag=Target,distance=..1000] run data modify storage mob_data: AI.Turn[0].Exit merge value {call_Exit:1b}
execute if data storage mob_data: AI.Turn[0].Exit{call_Exit:1} run data modify storage mob_data: AI.Turn append from storage mob_data: AI.Turn[0]
execute if data storage mob_data: AI.Turn[0].Exit{call_Exit:1} run data remove storage mob_data: AI.Turn[-1].Exit.call_Exit
execute if data storage mob_data: AI.Turn[0].Exit{call_Exit:1} run data remove storage mob_data: AI.Turn[0]
#Timeによるexit
execute if data storage mob_data: AI.Turn[0].Exit.TimeCount store result storage mob_data: AI.Turn[0].Exit.TimeCount int 0.99999 run data get storage mob_data: AI.Turn[0].Exit.TimeCount 1
execute if data storage mob_data: AI.Turn[0].Exit{TimeCount:0} run data modify storage mob_data: AI.Turn append from storage mob_data: AI.Turn[0]
execute if data storage mob_data: AI.Turn[0].Exit{TimeCount:0} run data remove storage mob_data: AI.Turn[-1].Exit.TimeCount
execute if data storage mob_data: AI.Turn[0].Exit{TimeCount:0} run data remove storage mob_data: AI.Turn[0]
execute if data storage mob_data: AI.Turn[0].Exit.Time unless data storage mob_data: AI.Turn[0].Exit.TimeCount run data modify storage mob_data: AI.Turn[0].Exit.TimeCount set from storage mob_data: AI.Turn[0].Exit.Time

#データを元に戻す
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI set from storage mob_data: AI
#Target解除
say @e[tag=Target]
tag @e[tag=Target] remove Target