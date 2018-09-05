##############################
### ローテーションを0-360に収める
##############################

execute if score $RX3 Global matches ..-90001 run scoreboard players set $RX3 Global -90000
execute if score $RX3 Global matches 90001.. run scoreboard players set $RX3 Global 90000

execute if score $RY3 Global matches ..-1 run scoreboard players add $RY3 Global 360000
execute if score $RY3 Global matches 360001.. run scoreboard players remove $RY3 Global 360000
