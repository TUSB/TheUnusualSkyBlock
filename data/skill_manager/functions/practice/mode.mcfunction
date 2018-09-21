##############################
### モードスキル実行
##############################

###消費MP決定
scoreboard players operation @s ActiveCost = @s ModeCost
execute if score @s SneakTime matches 1.. run function skill_manager:practice/sneak_mode
###スキルインターバル設定
scoreboard players operation @s ActiveInterval = @s ModeInterval
###アイサツ補正
execute if score @s Aisatsu matches 0.. run function skill_manager:ninja/aisatsu/apply
###エナジーセーブ補正
execute if score @s EnergySave matches 0.. run function skill_manager:hunter/energy_save/calc
###MP不足
execute if score @s MP < @s ActiveCost run function calc_manager:tellraw/low_mp
execute if score @s MP < @s ActiveCost run scoreboard players reset @s ActiveSkill
###制限中
function calc_manager:tellraw/interval
execute if score @s SkillInterval > $0 Const run scoreboard players reset @s ActiveSkill
execute if score @s ActiveSkill matches 1.. run scoreboard players operation @s MPConsumption += @s ActiveCost
###スキル発動不能時間設定
execute if score @s ActiveSkill matches 1.. run scoreboard players operation @s SkillInterval = @s ActiveInterval
###テラー判定
execute if score @s TerrorLevel matches 0.. run function effect_manager:terror/check

### 剣士＜はやぶさ斬り＞
execute if score @s ActiveSkill matches 11011..11019 run function skill_manager:knight/falcon_slash/act

### 剣士＜地裂斬＞
execute if score @s ActiveSkill matches 11021..11029 run function skill_manager:knight/crack_slash/act

### 剣士＜ディバインシールド＞
execute if score @s ActiveSkill matches 11031..11039 run function skill_manager:knight/divine_shield/act

### 剣士＜真空斬り＞
execute if score @s ActiveSkill matches 11041..11049 run function skill_manager:knight/aerial_slash/act

### 剣士＜リアクティブヒール＞
execute if score @s ActiveSkill matches 11051..11059 run function skill_manager:knight/reactive_heal/act

### 剣士＜魔人斬り＞
execute if score @s ActiveSkill matches 11061..11069 run function skill_manager:knight/genie_slash/act

### 剣士＜斬鉄剣＞
execute if score @s ActiveSkill matches 11071..11079 run function skill_manager:knight/odin_slash/act

### 忍者＜手裏剣＞
execute if score @s ActiveSkill matches 21011..21019 run function skill_manager:ninja/shuriken/act

### 忍者＜跳躍＞
execute if score @s ActiveSkill matches 21021..21029 run function skill_manager:ninja/choyaku/act

### 忍者＜連舞＞
execute if score @s ActiveSkill matches 21031..21039 run function skill_manager:ninja/tsuremai/act

### 忍者＜一閃＞
execute if score @s ActiveSkill matches 21041..21049 run function skill_manager:ninja/issen/act

### 忍者＜居縮＞
execute if score @s ActiveSkill matches 21051..21059 run function skill_manager:ninja/isukumi/act

### 忍者＜サヨナラ＞
execute if score @s ActiveSkill matches 21061..21069 run function skill_manager:ninja/sayonara/act

### 狩人＜ステークスファイア＞
execute if score @s ActiveSkill matches 31011..31019 run function skill_manager:hunter/stakes_fire/act

### 狩人＜チェインアロー＞
execute if score @s ActiveSkill matches 31021..31029 run function skill_manager:hunter/chain_arrow/act

### 狩人＜バードストライク＞
execute if score @s ActiveSkill matches 31031..31039 run function skill_manager:hunter/bird_strike/act

### 狩人＜ワイルドヒーリング＞
execute if score @s ActiveSkill matches 31041..31049 run function skill_manager:hunter/wild_healing/act

### 狩人＜ブラストスパーク＞
execute if score @s ActiveSkill matches 31051..31059 run function skill_manager:hunter/blast_spark/act

### 狩人＜ワイルドフレア＞
execute if score @s ActiveSkill matches 31061..31069 run function skill_manager:hunter/wild_flare/act

### 狩人＜フォトニックレーザー＞
execute if score @s ActiveSkill matches 31071..31079 run function skill_manager:hunter/photonic_lazer/act

### 白魔導士＜ケアル＞
execute if score @s ActiveSkill matches 41011..41019 run function skill_manager:white_mage/cure/act

### 白魔導士＜ディア＞
execute if score @s ActiveSkill matches 41021..41029 run function skill_manager:white_mage/dia/act

### 白魔導士＜フラワーギフト＞
execute if score @s ActiveSkill matches 41031..41039 run function skill_manager:white_mage/flower_gift/act

### 白魔導士＜セイクリッドピラー＞
execute if score @s ActiveSkill matches 41041..41049 run function skill_manager:white_mage/sacred_pillar/act

### 白魔導士＜ホーリー＞
execute if score @s ActiveSkill matches 41051..41059 run function skill_manager:white_mage/holy/act

### 黒魔導士＜アイスストーム＞->＜アイスジャベリン＞
execute if score @s ActiveSkill matches 51011..51019 run function skill_manager:black_mage/ice_javelin/act

### 黒魔導士＜クロスファイア＞->＜エクリプスフレイム＞
execute if score @s ActiveSkill matches 51021..51029 run function skill_manager:black_mage/eclipse_flame/act

### 黒魔導士＜ライトニングブロー＞
execute if score @s ActiveSkill matches 51031..51039 run function skill_manager:black_mage/lightning_blow/act

### 黒魔導士＜ジオクラッシュ＞
execute if score @s ActiveSkill matches 51041..51049 run function skill_manager:black_mage/geo_crash/act

### 召喚士＜フィール＞
execute if score @s ActiveSkill matches 61011..61019 run function skill_manager:summoner/fill/act

### 召喚士＜金タライ＞
execute if score @s ActiveSkill matches 61021..61029 run function skill_manager:summoner/kana_tarai/act

### 召喚士＜ディール＞
execute if score @s ActiveSkill matches 61031..61039 run function skill_manager:summoner/deal/act

### 召喚士＜ぽんぽん＞
execute if score @s ActiveSkill matches 61041..61049 run function skill_manager:summoner/ponpon/act

### 召喚士＜ふかふか＞
execute if score @s ActiveSkill matches 61051..61059 run function skill_manager:summoner/fukafuka/act

### 召喚士＜つんつん＞
execute if score @s ActiveSkill matches 61061..61069 run function skill_manager:summoner/tsuntsun/act

### 召喚士＜ぽむぽむ花火＞
execute if score @s ActiveSkill matches 61081..61089 run function skill_manager:summoner/pompom/act

### 召喚士＜コールＣアタック＞
execute if score @s ActiveSkill matches 61071..61079 rotated ~ 0 positioned ^ ^1 ^3.5 run function skill_manager:summoner/call_crystal/summon/random
### 召喚士＜コールＣエンハンス＞
execute if score @s ActiveSkill matches 61091..61099 rotated ~ 0 positioned ^ ^1 ^3.5 run function skill_manager:summoner/call_crystal/summon/random

### 召喚士＜サモンＢ：エンダーチェスト＞
execute if score @s ActiveSkill matches 61101..61109 run function skill_manager:summoner/summon_ender_chest/check

### 召喚士＜ぷちブラック＞
execute if score @s ActiveSkill matches 61111..61119 run function skill_manager:summoner/petit_black/launch

### 共通＜ウィークペイント＞
execute if score @s ActiveSkill matches 81011..81019 run function skill_manager:common/weakness_paint/act

### 共通＜ライブラ＞
execute if score @s ActiveSkill matches 81021..81022 run function skill_manager:common/libra/act

scoreboard players reset @s ActiveSkill
scoreboard players reset @s ActiveCost
scoreboard players reset @s ActiveInterval
