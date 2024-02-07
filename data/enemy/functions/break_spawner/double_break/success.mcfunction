#ダブルブレイク 確率で耐久を2倍減らす

scoreboard players set _ _ 2
scoreboard players operation _ Calc *= _ _
function makeup:enemy/break_spawner/double_break
