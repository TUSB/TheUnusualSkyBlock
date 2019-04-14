##############################
### データ管理エンティティにパラメーターセット
##############################

### パラメータ代入
execute in overworld positioned 0.0 0.0 0.0 run data modify entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter set from entity @s Passengers[{Tags:[Parameter]}]
