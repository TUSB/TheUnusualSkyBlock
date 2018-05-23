##############################
### パペット行動スロット取得実行
##############################

###スロット下限→上限
execute if score $Slot PupCurrentSlot matches ..0 run scoreboard players set $Slot PupCurrentSlot 9
###行動フラグOFF
scoreboard players set $Action PuppetScore 0
###マスターリンク
tag @s add ActiveMaster
###パペット行動
execute store success score $Action PuppetScore as @e[tag=PupRecordEntity,scores={PupRecordLevel=100..,PupRecordType=..9}] if score @s PupRecordSlot = $Slot PupCurrentSlot run function puppet_manager:action/do
###マスターリンク解除
tag @s remove ActiveMaster
###スロット更新
scoreboard players remove $Slot PupCurrentSlot 1
###スロット探索
execute if score $Action PuppetScore matches ..0 run function puppet_manager:action/move_slot
