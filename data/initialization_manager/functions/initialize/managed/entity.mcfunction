##############################
### 管理エンティティ初期化
##############################

### リンク用エンティティ召喚
execute in overworld run summon minecraft:item 0.0 0.0 0.0 {Age:-32768s,PickupDelay:32767s,NoGravity:true,Invulnerable:true,Tags:[Initialized,TargetLinker,System],Item:{id:"minecraft:stone",Count:1b,tag:{EntityData:{}}}}
### パラメータ代入
execute in overworld positioned 0.0 0.0 0.0 run data modify entity @e[distance=0,tag=TargetLinker,limit=1] Item.tag.Parameter set from entity @s Passengers[{Tags:[Parameter]}]
### IDセット
execute in overworld positioned 0.0 0.0 0.0 store result entity @e[distance=0,tag=TargetLinker,limit=1] Pos[1] double 0.01 run scoreboard players get @s ManagedID
