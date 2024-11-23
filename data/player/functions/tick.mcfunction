##############################
### プレイヤー毎ティック処理
##############################

### MCID変更検知
execute if entity @s[team=,tag=Initialized] run function player:mcid_change_detected

### 生き返り後処理
execute if entity @s[scores={Hunger=0..,Age=1..}] run function player:rise/

### ログイン時処理
execute if entity @s[scores={LeaveGame=1..}] run function player:leave_game

### めり込み処理
execute if entity @s[scores={Age=1..},gamemode=!spectator,gamemode=!creative] if block ^ ^ ^ #block:unbreakable anchored eyes if block ^ ^ ^ #block:unbreakable run function entity:suffocation
### 特殊床
execute if entity @s[gamemode=!creative,gamemode=!spectator] unless score @s Kazakiri matches 1.. if block ~ ~-2 ~ #entity:unique_floors run function entity:unique_floor/fork

#インターバル表示
execute if entity @s[nbt={Inventory:[{tag:{Skill:{ShowInterval:1b}}}]}] run function player:show_interval/check

### トリガー
execute if entity @s[scores={UseBow=1..}] run function player:trigger/use/bow
execute if entity @s[scores={UseCrossbow=1..}] run function player:trigger/use/crossbow
execute if entity @s[scores={UseTrident=1..}] run function player:trigger/use/trident
execute if entity @s[scores={UseCarrotStick=1..}] run function player:trigger/use/carrot_on_a_stick
execute if entity @s[scores={UseFungusStick=1..}] run function player:trigger/use/warped_fungus_on_a_stick
execute if entity @s[scores={UseMagmaCubeEgg=1..}] run function player:trigger/use/magma_cube_spawn_egg
execute if entity @s[scores={SneakTime=1..}] run function player:trigger/sneak
execute if entity @s[scores={SneakFrequency=1..}] run function player:trigger/sneak_frequency
execute if entity @s[scores={DamageTaken=0..}] run function player:trigger/damage_taken
execute if entity @s[scores={Jump=1..}] run function player:trigger/jump
execute if entity @s[scores={Talk=1..}] run function player:trigger/talk/
execute if entity @s[scores={Trade=1..}] run function player:trigger/trade/
execute if entity @s[scores={FoodLevel=1..}] run function player:trigger/food
execute if entity @s[scores={kill=1..}] run function player:trigger/kill

### スキル
function skill:tick_player

### 幸運によるMP補正
execute store result score _ Luck run attribute @s minecraft:generic.luck get 10
execute unless score _ Luck = @s Luck run function player:luck_update

### MP回復
function skill:update_mp/

### カスタムHP回復
execute if entity @s[scores={HealthHealing=-2147483648..}] run function player:health_healing

### プレイヤーゲーム設定
execute unless score @s ChangeSettings matches 0 run function player:game_settings/triggered
### プレイヤースキル設定
execute unless score @s ChangeSkill matches 0 run function skill:trigger/
### 職業変更
execute unless score @s ChangeJob matches 0 run function job:change/check
### 難易度変更
execute unless score @s ChangeDifficulty matches 0 run function main:difficulty/change/reject
### TIPS抑制
execute unless score @s TipsSupTrigger matches 0 run function player:tips/suppress
### 潜在能力
execute unless score @s PotentialTrigger matches 0 run function job:potentials/triggered

### ネザースター取得
# execute if entity @s[nbt={Inventory:[{id:"minecraft:nether_star"}]}] run function job:exp/get
execute if entity @s[nbt={Inventory:[{id:"minecraft:nether_star"}]}] run function player:trigger/nether_star

### 1秒処理
execute if score $Tick Count matches 0 run function player:one_second
