##############################
### パペット行動スロット取得実行
##############################

execute if score $Slot PupCurrentSlot matches ..0 run scoreboard players set $Slot PupCurrentSlot 9
scoreboard players set $Action PuppetScore 0
execute store success score $Action PuppetScore as @e[tag=PupRecordEntity,scores={PupRecordLevel=100..,PupRecordType=..9}] if score @s PupRecordSlot = $Slot PupCurrentSlot run function puppet_manager:action/do
scoreboard players remove $Slot PupCurrentSlot 1
execute if score $Action PuppetScore matches ..0 run function puppet_manager:action/move_slot
