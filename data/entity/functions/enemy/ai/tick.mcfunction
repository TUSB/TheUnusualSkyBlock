function oh_my_dat:please
data modify storage mob_data: AI set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI

#時間でのcall
execute if data storage mob_data: AI.Time if data entity @s {PortalCooldown:0} run function entity:enemy/ai/call/time

##Target処理
execute if data storage mob_data: AI.Turn[0].Target run function entity:enemy/ai/target/

##Move処理
#execute if data storage mob_data: AI.Turn[0].Move run function entity:enemy/ai/move/

##skill処理
execute if data storage mob_data: AI.Turn[0].Skill run function entity:enemy/ai/skill/

##Turn exit確認
execute if data storage mob_data: AI.Turn[0].Exit run function entity:enemy/ai/exit/

#データを元に戻す
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI set from storage mob_data: AI

#Target解除
tag @e[tag=Target] remove Target
