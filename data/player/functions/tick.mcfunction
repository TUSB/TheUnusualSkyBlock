##############################
### プレイヤー毎ティック処理
##############################

### 生き返り後処理
execute if entity @s[scores={Hunger=0..,Age=1..}] run function player:rise

### ログイン時処理
execute if entity @s[scores={LeaveGame=1..}] run function player:leave_game

### めり込み処理
execute if entity @s[scores={Age=1..},gamemode=!spectator,gamemode=!creative] anchored eyes if block ^ ^ ^ #entity:unbreakable run function entity:suffocation
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
execute if entity @s[scores={MineLodestone=1..}] run function player:trigger/mine/spawner
execute if entity @s[scores={Talk=1..}] run function player:trigger/talk/
execute if entity @s[scores={Trade=1..}] run function player:trigger/trade/
execute if entity @s[scores={FoodLevel=1..}] run function player:trigger/food

### スキル
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
# 黒魔導士
execute if entity @s[scores={LightningBlow=1..}] at @s run function makeup:skill/act/black_mage/lightning_blow/tick
execute if entity @s[scores={BlitzManover=0..}] at @s run function skill:act/black_mage/blitz_manover/tick
execute if entity @s[scores={RockNRoll=0..}] at @s run function skill:act/black_mage/rock_n_roll/tick
execute if entity @s[scores={MagicShield=0..}] at @s run function skill:act/black_mage/magic_shield/tick
execute if entity @s[scores={WindWall=0..}] at @s run function skill:act/black_mage/wind_wall/tick
execute if entity @s[scores={HomePoint=1..}] at @s run function skill:act/black_mage/return/home_point/trigger

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
### TIPS抑制
execute unless score @s TipsSupTrigger matches 0 run function player:tips/suppress
### 潜在能力
execute unless score @s PotentialTrigger matches 0 run function job:potentials/triggered

### ネザースター取得
execute if entity @s[nbt={Inventory:[{id:"minecraft:nether_star"}]}] run function job:exp/get

### 1秒処理
execute if score $Tick Count matches 0 run function player:one_second
