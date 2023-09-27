#> skill:tick1
#プレイヤーのスキル処理

execute if entity @s[scores={SkillShortcut=1..}] run function skill:shortcut/tick
execute if entity @s[scores={Burst=..-1}] run function skill:burst/command/tick
execute if entity @s[scores={Burst=1..}] run function skill:burst/tick
scoreboard players remove @s Interval 1
# 剣士
execute if entity @s[scores={IronWill=1..}] run function skill:act/knight/iron_will/count
execute if entity @s[tag=IronWill] run function skill:act/knight/iron_will/load
execute if entity @s[scores={OdinSlash=0..}] run function skill:act/knight/odin_slash/tick
# 忍者
execute if entity @s[scores={Choyaku=0..},nbt={OnGround:false,FallDistance:0.0f}] run function makeup:skill/act/ninja/choyaku/direction
execute if entity @s[scores={Kazakiri=0..}] run function skill:act/ninja/kazakiri/tick
execute if entity @s[scores={Kaishaku=0..}] run function skill:act/ninja/kaishaku/player_tick
execute if entity @s[scores={Issen=0..}] run function skill:act/ninja/issen/tick
# 狩人
execute if entity @s[scores={RaderVision=1..}] run function skill:act/hunter/rader_vision/tick
execute if entity @s[scores={BlastSpark=1..}] anchored eyes positioned ^ ^ ^-0.1 run function skill:act/hunter/blast_spark/tick
execute if entity @s[scores={BlastSpark=1..},type=!player,tag=BurstShadow] anchored eyes positioned ^ ^ ^-0.1 run function skill:burst/ninja/blast_spark
# 黒魔導士
execute if entity @s[scores={LightningBlow=1..}] run function skill:act/black_mage/lightning_blow/tick
execute if entity @s[scores={BlitzManover=0..}] run function skill:act/black_mage/blitz_manover/tick
execute if entity @s[scores={RockNRoll=0..}] run function skill:act/black_mage/rock_n_roll/tick
execute if entity @s[scores={MagicShield=0..}] run function skill:act/black_mage/magic_shield/tick
execute if entity @s[scores={WindWall=1..}] run function skill:act/black_mage/wind_wall/tick
execute if entity @s[scores={HomePoint=1..}] run function skill:act/black_mage/return/home_point/trigger
# 共通
execute if entity @s[scores={RestoreItem=0..}] run function skill:act/common/restore_item/tick

### 1秒処理
execute if score $Tick Count matches 0 run function skill:one_second_player