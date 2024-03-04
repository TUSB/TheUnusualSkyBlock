
#時間表示
execute store result score _ ChangeJobLock run time query gametime
scoreboard players operation _ ChangeJobLock -= @s ChangeJobLock
scoreboard players set _ _ -1200
scoreboard players operation _ ChangeJobLock /= _ _
scoreboard players add _ ChangeJobLock 60
scoreboard players operation @s ChangeJobLock >< _ ChangeJobLock

execute if score @s ChangeJobLock matches ..0 run tellraw @s ["\n",{"translate":"・職業変更"}," | ",{"translate":"スキルを使用すると 1時間の変更制限がかかります。"},"\n"]
execute if score @s ChangeJobLock matches 1.. run tellraw @s ["\n",{"translate":"・職業変更"}," | ",{"translate":"変更制限:残り %1$s分","with":[{"score":{"name":"@s","objective":"ChangeJobLock"}}]},"\n"]

# bitシフトで変更可能か確認する
# 最上位ビットから順に剣士 ~ 怪盗
scoreboard players operation _ CanChangeJobFlag = @s CanChangeJobFlag
scoreboard players set _ ChangeJob 2
execute if score @s ChangeJobLock matches 1.. run scoreboard players reset _ CanChangeJobFlag

## 制限なし

data modify block 2 3 2 Text1 set value '[{"text":""}]'

scoreboard players operation _ CanChangeJobFlag *= _ ChangeJob
execute if score _ CanChangeJobFlag matches ..-1 run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true},{"text":" < "},{"text":"K","font":"icon","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger ChangeJob set 1"},"hoverEvent":{"action":"show_text","value":{"translate":"%1$sに転職する！","with":[{"translate":"剣士","color":"aqua"}]}}},{"text":" >"}]'
execute if score _ CanChangeJobFlag matches 00.. run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true},{"text":" < "},{"text":"K","font":"icon","color":"gray","hoverEvent":{"action":"show_text","value":{"translate":"この職業はここで変更できないようだ……"}}},{"text":" >"}]'

scoreboard players operation _ CanChangeJobFlag *= _ ChangeJob
execute if score _ CanChangeJobFlag matches ..-1 run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true},{"text":" < "},{"text":"N","font":"icon","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger ChangeJob set 2"},"hoverEvent":{"action":"show_text","value":{"translate":"%1$sに転職する！","with":[{"translate":"忍者","color":"aqua"}]}}},{"text":" >"}]'
execute if score _ CanChangeJobFlag matches 00.. run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true},{"text":" < "},{"text":"N","font":"icon","color":"gray","hoverEvent":{"action":"show_text","value":{"translate":"この職業はここで変更できないようだ……"}}},{"text":" >"}]'

scoreboard players operation _ CanChangeJobFlag *= _ ChangeJob
execute if score _ CanChangeJobFlag matches ..-1 run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true},{"text":" < "},{"text":"H","font":"icon","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger ChangeJob set 3"},"hoverEvent":{"action":"show_text","value":{"translate":"%1$sに転職する！","with":[{"translate":"狩人","color":"aqua"}]}}},{"text":" >"}]'
execute if score _ CanChangeJobFlag matches 00.. run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true},{"text":" < "},{"text":"H","font":"icon","color":"gray","hoverEvent":{"action":"show_text","value":{"translate":"この職業はここで変更できないようだ……"}}},{"text":" >"}]'

scoreboard players operation _ CanChangeJobFlag *= _ ChangeJob
execute if score _ CanChangeJobFlag matches ..-1 run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true},{"text":" < "},{"text":"W","font":"icon","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger ChangeJob set 4"},"hoverEvent":{"action":"show_text","value":{"translate":"%1$sに転職する！","with":[{"translate":"白魔導士","color":"aqua"}]}}},{"text":" >"}]'
execute if score _ CanChangeJobFlag matches 00.. run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true},{"text":" < "},{"text":"W","font":"icon","color":"gray","hoverEvent":{"action":"show_text","value":{"translate":"この職業はここで変更できないようだ……"}}},{"text":" >"}]'

scoreboard players operation _ CanChangeJobFlag *= _ ChangeJob
execute if score _ CanChangeJobFlag matches ..-1 run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true},{"text":" < "},{"text":"B","font":"icon","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger ChangeJob set 5"},"hoverEvent":{"action":"show_text","value":{"translate":"%1$sに転職する！","with":[{"translate":"黒魔導士","color":"aqua"}]}}},{"text":" >"}]'
execute if score _ CanChangeJobFlag matches 00.. run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true},{"text":" < "},{"text":"B","font":"icon","color":"gray","hoverEvent":{"action":"show_text","value":{"translate":"この職業はここで変更できないようだ……"}}},{"text":" >"}]'

scoreboard players operation _ CanChangeJobFlag *= _ ChangeJob
execute if score _ CanChangeJobFlag matches ..-1 run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true},{"text":" < "},{"text":"S","font":"icon","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger ChangeJob set 6"},"hoverEvent":{"action":"show_text","value":{"translate":"%1$sに転職する！","with":[{"translate":"召喚士","color":"aqua"}]}}},{"text":" >"}]'
execute if score _ CanChangeJobFlag matches 00.. run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true},{"text":" < "},{"text":"S","font":"icon","color":"gray","hoverEvent":{"action":"show_text","value":{"translate":"この職業はここで変更できないようだ……"}}},{"text":" >"}]'

scoreboard players operation _ CanChangeJobFlag *= _ ChangeJob
execute if score _ CanChangeJobFlag matches ..-1 run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true},{"text":" < "},{"text":"P","font":"icon","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger ChangeJob set 7"},"hoverEvent":{"action":"show_text","value":{"translate":"%1$sに転職する！","with":[{"translate":"絡繰士","color":"aqua"}]}}},{"text":" >"}]'
# execute if score _ CanChangeJobFlag matches 00.. run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true},{"text":" < "},{"text":"P","font":"icon","color":"gray","hoverEvent":{"action":"show_text","value":{"translate":"この職業はここで変更できないようだ……"}}},{"text":" >"}]'
execute if score _ CanChangeJobFlag matches 00.. run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true},{"text":" < "},{"text":"P","font":"icon","color":"dark_gray","strikethrough":true,"hoverEvent":{"action":"show_text","value":{"translate":"この職業はここで変更できないようだ……"}}},{"text":" >"}]'

scoreboard players operation _ CanChangeJobFlag *= _ ChangeJob
execute if score _ CanChangeJobFlag matches ..-1 run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true},{"text":" < "},{"text":"T","font":"icon","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger ChangeJob set 8"},"hoverEvent":{"action":"show_text","value":{"translate":"%1$sに転職する！","with":[{"translate":"怪盗","color":"aqua"}]}}},{"text":" >"}]'
# execute if score _ CanChangeJobFlag matches 00.. run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true},{"text":" < "},{"text":"T","font":"icon","color":"gray","hoverEvent":{"action":"show_text","value":{"translate":"この職業はここで変更できないようだ……"}}},{"text":" >"}]'
execute if score _ CanChangeJobFlag matches 00.. run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true},{"text":" < "},{"text":"T","font":"icon","color":"dark_gray","strikethrough":true,"hoverEvent":{"action":"show_text","value":{"translate":"この職業はここで変更できないようだ……"}}},{"text":" >"}]'

execute if score @s ChangeJobLock matches ..0 run tellraw @s {"block":"2 3 2","nbt":"Text1","interpret":true}

## 制限あり

execute if score @s ChangeJobLock matches 1.. run tellraw @s ["",{"text":" < "},{"text":"K","font":"icon","color":"red","hoverEvent":{"action":"show_text","value":{"translate":"変更制限中！"}}},{"text":" >"},{"text":" < "},{"text":"N","font":"icon","color":"red","hoverEvent":{"action":"show_text","value":{"translate":"変更制限中！"}}},{"text":" >"},{"text":" < "},{"text":"H","font":"icon","color":"red","hoverEvent":{"action":"show_text","value":{"translate":"変更制限中！"}}},{"text":" >"},{"text":" < "},{"text":"W","font":"icon","color":"red","hoverEvent":{"action":"show_text","value":{"translate":"変更制限中！"}}},{"text":" >"},{"text":" < "},{"text":"B","font":"icon","color":"red","hoverEvent":{"action":"show_text","value":{"translate":"変更制限中！"}}},{"text":" >"},{"text":" < "},{"text":"S","font":"icon","color":"red","hoverEvent":{"action":"show_text","value":{"translate":"変更制限中！"}}},{"text":" >"},{"text":" < "},{"text":"P","font":"icon","color":"red","hoverEvent":{"action":"show_text","value":{"translate":"変更制限中！"}}},{"text":" >"},{"text":" < "},{"text":"T","font":"icon","color":"red","hoverEvent":{"action":"show_text","value":{"translate":"変更制限中！"}}},{"text":" >"}]

# 改行
tellraw @s ""

execute if score @s ChangeJobLock matches 1.. run scoreboard players operation @s ChangeJobLock >< _ ChangeJobLock