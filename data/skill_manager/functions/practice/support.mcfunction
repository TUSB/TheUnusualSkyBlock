##############################
### サポートスキル実行
##############################

###消費MP決定
execute if score @s SneakTime matches 1.. run function skill_manager:practice/sneak_support
###アイサツ補正
execute if score @s Aisatsu matches 0.. run function skill_manager:ninja/aisatsu/apply
###エナジーセーブ補正
execute if score @s EnergySave matches 0.. run function skill_manager:hunter/energy_save/calc
###MP不足
execute if score @s MP < @s SupportCost run function calc_manager:tellraw/low_mp
execute if score @s MP < @s SupportCost run scoreboard players reset @s SupportSkill
###制限中
function calc_manager:tellraw/interval
execute if score @s SkillInterval > $0 Const run scoreboard players reset @s SupportSkill
execute if score @s SupportSkill matches 1.. run scoreboard players operation @s MPConsumption += @s SupportCost
###スキル発動不能時間設定
execute if score @s SupportSkill matches 1.. run scoreboard players operation @s SkillInterval = @s SupportInterval
###テラー判定
execute if score @s TerrorLevel matches 0.. run function effect_manager:terror/check

### ファランクス
execute if score @s SupportSkill matches 12011..12019 run function skill_manager:knight/phalanx/act

### アイアンウィル
execute if score @s SupportSkill matches 12021..12029 run function skill_manager:knight/iron_will/act

### 鍛冶
execute if score @s SupportSkill matches 12031..12039 run function skill_manager:knight/blacksmith/act

### デコイ
execute if score @s SupportSkill matches 12041..12049 at @e[tag=Egg,distance=..6,sort=nearest,limit=1] run function skill_manager:knight/decoy/act

### タクティカルヒール
execute if score @s SupportSkill matches 12051..12059 run function skill_manager:knight/tactical_heal/act

### アイサツ
execute if score @s SupportSkill matches 22011..22019 run function skill_manager:ninja/aisatsu/act

### 水遁
execute if score @s SupportSkill matches 22021..22029 run function skill_manager:ninja/suiton/act

### 火遁
execute if score @s SupportSkill matches 22031..22039 run function skill_manager:ninja/katon/act

### 黙想
execute if score @s SupportSkill matches 22041..22049 run function skill_manager:ninja/mokuso/act

### 兵糧丸
execute if score @s SupportSkill matches 22051..22059 run function skill_manager:ninja/hyorogan/act

### 夜駆
execute if score @s SupportSkill matches 22061..22069 run function skill_manager:ninja/yokake/act

### 呼魂
execute if score @s SupportSkill matches 22071..22079 run function skill_manager:ninja/kodama/act

### 介錯
execute if score @s SupportSkill matches 22081..22089 run function skill_manager:ninja/kaishaku/act

### 風切
execute if score @s SupportSkill matches 22091..22099 run function skill_manager:ninja/kazakiri/act

### 照明弾
execute if score @s SupportSkill matches 32011..32019 run function skill_manager:hunter/flare_bomb/act

### ルカナントラップ
execute if score @s SupportSkill matches 32021..32029 at @e[tag=Egg,distance=..6,sort=nearest,limit=1] run function skill_manager:hunter/kasap_trap/act

### ワイルドクッキング
execute if score @s SupportSkill matches 32031..32039 run function skill_manager:hunter/wild_cooking/act

### ボミオストラップ
execute if score @s SupportSkill matches 32041..32049 at @e[tag=Egg,distance=..6,sort=nearest,limit=1] run function skill_manager:hunter/deceleratle_trap/act

### エナジーセーブ
execute if score @s SupportSkill matches 32051..32059 run function skill_manager:hunter/energy_save/act

### レーダーヴィジョン
execute if score @s SupportSkill matches 32061..32069 run function skill_manager:hunter/rader_vision/act

### ピアッシングエイム
execute if score @s SupportSkill matches 32071..32079 run function skill_manager:hunter/piercing_aim/act

### ニフラムトラップ
execute if score @s SupportSkill matches 32081..32089 at @e[tag=Egg,distance=..6,sort=nearest,limit=1] run function skill_manager:hunter/expel_trap/act

### キアリク
execute if score @s SupportSkill matches 42011..42019 run function skill_manager:white_mage/clear/act

### ハートブースト
execute if score @s SupportSkill matches 42021..42029 run function skill_manager:white_mage/heart_boost/act

### バオル
execute if score @s SupportSkill matches 42031..42039 run function skill_manager:white_mage/buffall/act

### リジェネレーション
execute if score @s SupportSkill matches 42041..42049 run function skill_manager:white_mage/regeneration/act

### クレリックナレッジ
execute if score @s SupportSkill matches 42051..42059 run function skill_manager:white_mage/cleric_knowledge/act

### クイック
execute if score @s SupportSkill matches 42061..42069 run function skill_manager:white_mage/quick/act

### アレイズ
execute if score @s SupportSkill matches 42071..42079 run function skill_manager:white_mage/araise/act

### スティッキーアイス
execute if score @s SupportSkill matches 52011..52019 positioned as @e[tag=Egg,distance=..6,sort=nearest,limit=1] run function skill_manager:black_mage/sticky_ice/act

### キャンドル
execute if score @s SupportSkill matches 52021..52029 positioned as @e[tag=Egg,distance=..6,sort=nearest,limit=1] run function skill_manager:black_mage/candle/act

### グロウ
execute if score @s SupportSkill matches 52041..52049 run function skill_manager:black_mage/grow/act

### ルーラ
execute if score @s SupportSkill matches 52091..52099 run function skill_manager:black_mage/return/act

### ダークスワンプ
execute if score @s SupportSkill matches 52071..52079 at @e[tag=Egg,distance=..6,sort=nearest,limit=1] run function skill_manager:black_mage/dark_swamp/act

### サモンＰ：スノー
execute if score @s SupportSkill matches 62011..62019 at @e[tag=Egg,distance=..6,sort=nearest,limit=1] run function skill_manager:summoner/summon_snow_golem/act

### サモンＥ：スーパードラゴン
execute if score @s SupportSkill matches 62021..62029 at @e[tag=Egg,distance=..6,sort=nearest,limit=1] run function skill_manager:summoner/summon_super_dragon/act

### ヘイカモン
execute if score @s SupportSkill matches 62031..62039 at @e[tag=Egg,distance=..6,sort=nearest,limit=1] run function skill_manager:summoner/come_on/act

### サモンＰ：ウルフ
execute if score @s SupportSkill matches 62041..62049 at @e[tag=Egg,distance=..6,sort=nearest,limit=1] run function skill_manager:summoner/summon_wolf/act

### サモンＰ：ヒーリングキャット
execute if score @s SupportSkill matches 62051..62059 at @e[tag=Egg,distance=..6,sort=nearest,limit=1] run function skill_manager:summoner/summon_healing_cat/act

### サモンＰ：マーチャント
execute if score @s SupportSkill matches 62061..62069 at @e[tag=Egg,distance=..6,sort=nearest,limit=1] run function skill_manager:summoner/summon_merchant/act

### サモンＰ：ゴーレム
execute if score @s SupportSkill matches 62071..62079 at @e[tag=Egg,distance=..6,sort=nearest,limit=1] run function skill_manager:summoner/summon_iron_golem/act

### サモンＰ：サーヴァント
execute if score @s SupportSkill matches 62081..62089 at @e[tag=Egg,distance=..6,sort=nearest,limit=1] run function skill_manager:summoner/summon_vindicator/act

### サモンＰ：グライダー
execute if score @s SupportSkill matches 62091..62099 at @e[tag=Egg,distance=..6,sort=nearest,limit=1] run function skill_manager:summoner/summon_glider/act

### スノウチャージ
execute if score @s SupportSkill matches 82011..82019 at @e[tag=Egg,distance=..6,sort=nearest,limit=1] run function skill_manager:common/snow_charge/act

scoreboard players reset @s SupportSkill
scoreboard players reset @s SupportCost
