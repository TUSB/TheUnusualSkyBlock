
###職業変更とレベル調整用
# デバッグ用

#> 使い方
#
# デバッグ鯖に置いてあるチェストから各職業の頭を取り出し、
# それを手に持った状態でこのfunctionを実行すると、その職業に転職する。
# 職業の頭以外のものを持っていた場合は無職に転職する。
#
# 転職前のステータスは保存され、転職先のステータスが呼び出される。
#
# インベントリに入っている各職業の頭の数が各職業のLevelになる。
# 持っていないときは変更なし。
# Levelを変更するときは、その職業のステータスが初期化されている必要がある。
#

#ステータスセーブ
function job:status/save

#転職先の番号に変更する。
scoreboard players set @s Job 0
execute if data entity @s SelectedItem.tag.display{Name:'["剣士"]'} run scoreboard players set @s Job 1
execute if data entity @s SelectedItem.tag.display{Name:'["忍者"]'} run scoreboard players set @s Job 2
execute if data entity @s SelectedItem.tag.display{Name:'["狩人"]'} run scoreboard players set @s Job 3
execute if data entity @s SelectedItem.tag.display{Name:'["白魔導士"]'} run scoreboard players set @s Job 4
execute if data entity @s SelectedItem.tag.display{Name:'["黒魔導士"]'} run scoreboard players set @s Job 5
execute if data entity @s SelectedItem.tag.display{Name:'["召喚士"]'} run scoreboard players set @s Job 6
execute if data entity @s SelectedItem.tag.display{Name:'["絡繰士"]'} run scoreboard players set @s Job 7
execute if data entity @s SelectedItem.tag.display{Name:'["怪盗"]'} run scoreboard players set @s Job 8

#頭削除&レベル設定
execute if data entity @s Inventory[{tag:{display:{Name:'["剣士"]'}}}] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[1].Level int 1 run clear @s player_head{display:{Name:'["剣士"]'}}
execute if data entity @s Inventory[{tag:{display:{Name:'["忍者"]'}}}] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[2].Level int 1 run clear @s player_head{display:{Name:'["忍者"]'}}
execute if data entity @s Inventory[{tag:{display:{Name:'["狩人"]'}}}] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[3].Level int 1 run clear @s player_head{display:{Name:'["狩人"]'}}
execute if data entity @s Inventory[{tag:{display:{Name:'["白魔導士"]'}}}] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[4].Level int 1 run clear @s player_head{display:{Name:'["白魔導士"]'}}
execute if data entity @s Inventory[{tag:{display:{Name:'["黒魔導士"]'}}}] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[5].Level int 1 run clear @s player_head{display:{Name:'["黒魔導士"]'}}
execute if data entity @s Inventory[{tag:{display:{Name:'["召喚士"]'}}}] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[6].Level int 1 run clear @s player_head{display:{Name:'["召喚士"]'}}
execute if data entity @s Inventory[{tag:{display:{Name:'["絡繰士"]'}}}] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[7].Level int 1 run clear @s player_head{display:{Name:'["絡繰士"]'}}
execute if data entity @s Inventory[{tag:{display:{Name:'["怪盗"]'}}}] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[8].Level int 1 run clear @s player_head{display:{Name:'["怪盗"]'}}

#ステータスロード
function job:status/load

#レベルアップ可能ならレベルアップする
execute if score @s Exp = @s RequiredExp run function job:level_up/
