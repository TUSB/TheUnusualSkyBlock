##############################
### 値設定分岐処理(the_end)
##############################

execute if score $X Global matches 0..0 if score $Z Global matches 0..0 run function area_manager:set_dimension/end
