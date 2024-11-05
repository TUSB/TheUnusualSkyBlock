#function calc:island/clear_count_percent


#execute if score _ Ret matches 20.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayedDataList[-1]."遅延ステータス"."ステータス".LootTable append from storage tusb_mob: "遅延ステータス"."ステータス".LootTable[]
#execute if score _ Ret matches 40.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayedDataList[-1]."遅延ステータス"."ステータス".LootTable append from storage tusb_mob: "遅延ステータス"."ステータス".LootTable[]
#execute if score _ Ret matches 60.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayedDataList[-1]."遅延ステータス"."ステータス".LootTable append from storage tusb_mob: "遅延ステータス"."ステータス".LootTable[]
#execute if score _ Ret matches 80.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayedDataList[-1]."遅延ステータス"."ステータス".LootTable append from storage tusb_mob: "遅延ステータス"."ステータス".LootTable[]
#execute if score _ Ret matches 100.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayedDataList[-1]."遅延ステータス"."ステータス".LootTable append from storage tusb_mob: "遅延ステータス"."ステータス".LootTable[]
execute if data storage tusb_mob: Extra{MutatedSpawn:1b} run data modify storage tusb_mob: SpawnData.Tags append value "Mutated"
execute if data storage tusb_mob: Extra{MutatedSpawn:1b} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayedDataList[-1]."遅延ステータス"."ステータス".LootTable append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayedDataList[-1]."遅延ステータス"."ステータス".LootTable[]
execute if data storage tusb_mob: Extra{MutatedSpawn:1b} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayedDataList[-1]."遅延ステータス"."ステータス".LootTable append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayedDataList[-1]."遅延ステータス"."ステータス".LootTable[]
execute if data storage tusb_mob: Extra{MutatedSpawn:1b} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayedDataList[-1]."遅延ステータス"."ステータス".LootTable append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayedDataList[-1]."遅延ステータス"."ステータス".LootTable[]

# 強化個体なら名前を変更する
execute if data storage tusb_mob: Extra{MutatedSpawn:1b} in area:control_area run data modify block 2 3 2 front_text.messages[0] set value '[{"text":" ","font":"default"},{"text":"E","font":"icon"},{"text":" ","font":"default"},{"nbt":"SpawnData.CustomName","storage":"tusb_mob:","font":"default","interpret":true}]'
execute if data storage tusb_mob: Extra{MutatedSpawn:1b} in area:control_area run data modify storage tusb_mob: SpawnData.CustomName set from block 2 3 2 front_text.messages[0]
