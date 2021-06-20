
###職業変更用
# デバッグ用

#> 使い方
#
# デバッグ鯖に置いてあるチェストから各職業の頭を取り出し、
# それを手に持った状態でこのfunctionを実行すると、その職業に転職する。
# 職業の頭以外のものを持っていた場合は無職に転職する。
#
# 転職前のステータスは保存され、転職先のステータスが呼び出される。
#

function job:status/operation_start

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

#ステータスロード
function job:status/load

#頭削除
clear @s player_head{display:{Name:'["剣士"]'}}
clear @s player_head{display:{Name:'["忍者"]'}}
clear @s player_head{display:{Name:'["狩人"]'}}
clear @s player_head{display:{Name:'["白魔導士"]'}}
clear @s player_head{display:{Name:'["黒魔導士"]'}}
clear @s player_head{display:{Name:'["召喚士"]'}}
clear @s player_head{display:{Name:'["絡繰士"]'}}
clear @s player_head{display:{Name:'["怪盗"]'}}

function job:status/operation_end

#レベルアップ可能ならレベルアップする
execute if score @s Exp >= @s RequiredExp run function job:level_up/
