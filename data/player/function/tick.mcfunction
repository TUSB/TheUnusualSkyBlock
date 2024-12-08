#> player:tick
# -> 1秒処理
## 使用するときにコメントアウトを外してください。
# execute if score $Ticks Count matches 0 run function player:one_second

###パーティクル表示判定
function player:particle/update_tag

### 生き返り後処理
execute if entity @s[scores={Hunger=0..,Age=1..}] run function player:rise/

### ログイン時処理
execute if entity @s[scores={LeaveGame=1..}] run function player:leave_game

### トリガー
execute if entity @s[scores={UseBow=1..}] run function player:trigger/use/bow
execute if entity @s[scores={UseCrossbow=1..}] run function player:trigger/use/crossbow
execute if entity @s[scores={UseTrident=1..}] run function player:trigger/use/trident
execute if entity @s[scores={UseCarrotStick=1..}] run function player:trigger/use/carrot_on_a_stick
# execute if entity @s[scores={UseFungusStick=1..}] run function player:trigger/use/warped_fungus_on_a_stick
execute if entity @s[scores={UseMagmaCubeEgg=1..}] run function player:trigger/use/magma_cube_spawn_egg
execute if entity @s[scores={SneakTime=1..}] run function player:trigger/sneak
execute if entity @s[scores={SneakFrequency=1..}] run function player:trigger/sneak_frequency
execute if entity @s[scores={DamageTaken=0..}] run function player:trigger/damage_taken
execute if entity @s[scores={Jump=1..}] run function player:trigger/jump
execute if entity @s[scores={Talk=1..}] run function player:trigger/talk/
execute if entity @s[scores={Trade=1..}] run function player:trigger/trade/
execute if entity @s[scores={FoodLevel=1..}] run function player:trigger/food
execute if entity @s[scores={kill=1..}] run function player:trigger/kill
# ネザースター取得
execute if entity @s[nbt={Inventory:[{id:"minecraft:nether_star"}]}] run function player:trigger/nether_star

### スキル
function skill:player_tick

### プレイヤーゲームメニュー
execute unless score @s ChangeSettings matches 0 run function main:game_menu/triggered
### プレイヤースキル設定
execute unless score @s ChangeSkill matches 0 run function skill:trigger/
### 職業変更
execute unless score @s ChangeJob matches 0 run function job:change/check
