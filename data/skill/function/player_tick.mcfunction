#> skill:player_tick
# -> 1tick処理
## 使用するときにコメントアウトを外してください。
execute if score $Ticks Count matches 0 run function skill:player_one_second

#インターバル表示
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{Skill:{ShowInterval:1b}}}}]}] run function skill:show_interval/check
scoreboard players remove @s Interval 1

# スキルショートカット
execute if entity @s[scores={SkillShortcut=1..}] run function skill:shortcut/tick

# 幸運によるMP補正
execute store result score _ Luck run attribute @s minecraft:generic.luck get 10
execute unless score _ Luck = @s Luck run function skill:luck_update

# MP回復
function skill:update_mp/

## 剣士
# アイアンウィル
execute if entity @s[scores={IronWill=1..}] run function skill:act/knight/iron_will/tick
execute if entity @s[tag=IronWill] run function skill:act/knight/iron_will/load

## 忍者
# 跳躍演出
execute if score @s Choyaku matches 0.. if entity @s[nbt={OnGround:false,FallDistance:0.0f}] run function makeup:skill/act/ninja/choyaku/direction

# 介錯
execute if entity @s[scores={Kaishaku=0..}] run function skill:act/ninja/kaishaku/player_tick

