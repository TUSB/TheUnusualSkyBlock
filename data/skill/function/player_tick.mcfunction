#> skill:player_tick
# -> 1秒処理
## 使用するときにコメントアウトを外してください。
# execute if score $Ticks Count matches 0 run function skill:player_one_second

#インターバル表示
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{Skill:{ShowInterval:1b}}}}]}] run function skill:show_interval/check

# スキルショートカット
execute if entity @s[scores={SkillShortcut=1..}] run function skill:shortcut/tick

### 幸運によるMP補正
execute store result score _ Luck run attribute @s minecraft:generic.luck get 10
execute unless score _ Luck = @s Luck run function skill:luck_update

### MP回復
function skill:update_mp/
