##############################
### 幻影判定成功時処理
##############################

tellraw @a [{"text":"","color":"yellow"},{"selector":"@s"},"の",{"text":"幻影","color":"white"},"が消え去った。"]
scoreboard players reset @s Damage
scoreboard players remove @s BlinkCount 1
scoreboard players operation @s RecentMaxDamage = $IntMax Const
execute unless score @s BlinkSubTimer matches 0.. run function skill_manager:enemy/blink/decorate/initialize

###---演出---Start
playsound minecraft:entity.wolf.shake master @a[distance=..32] ~ ~ ~ 3 2
playsound minecraft:entity.illusioner.mirror_move master @a[distance=..32] ~ ~ ~ 3
###---演出---End
