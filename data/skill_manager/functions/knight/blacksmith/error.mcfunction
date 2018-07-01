##############################
### 鍛冶エラー
##############################

###---演出---Start
playsound block.dispenser.fail master @p ~ ~ ~ 1 1
execute rotated ~ 0 positioned ^ ^1.2 ^1 run particle barrier ~ ~ ~ 0 0 0 1 0 force @p
###---演出---End
