##############################
### 敵スキル発動
##############################

### jukeboxにコピー
execute at 1-0-0-0-0 run data modify block 0 0 0 RecordItem.tag set from entity @e[distance=0,tag=DataHolder,limit=1] Item.tag

### 初期化
execute unless data block 0 0 0 RecordItem.tag.Parameter.Skill[0].Initialized run function skill_manager:enemy/initialize

##### Cooldown設定
### MinCooldown読み込み
execute store result score $Min Global run data get block 0 0 0 RecordItem.tag.Parameter.Skill[0].MinTime 1
### MaxCooldown読み込み
execute store result score $Max Global run data get block 0 0 0 RecordItem.tag.Parameter.Skill[0].MaxTime 1
### Min-Max乱数計算
function calc_manager:update_random
scoreboard players operation $Max Global -= $Min Global
scoreboard players operation $Max Global *= $Random Global
scoreboard players operation $Max Global /= $MWCBase Const
scoreboard players operation $Max Global += $Min Global
### SkillTimerにセット
scoreboard players operation @s SkillTimer = $Max Global

##### スキル発動判定
### Chance読み込み
execute store result score $Chance Global run data get block 0 0 0 RecordItem.tag.Parameter.Skill[0].Chance 1
### Chance<100なら乱数計算
execute if score $Chance Global matches ..100 run function skill_manager:enemy/chance
### Chance>=乱数 or nullで実行
execute if score $Chance Global >= $Random Global run function skill_manager:enemy/act

##### Loop処理
### Loop読み込み
execute store result score $Loop Global run data get block 0 0 0 RecordItem.tag.Parameter.Skill[0].Loop 1
### MaxLoop読み込み
execute store result score $MaxLoop Global run data get block 0 0 0 RecordItem.tag.Parameter.Skill[0].MaxLoop 1
### Loop回数-1
scoreboard players remove $Loop Global 1
execute if score $Loop Global matches 0.. store result block 0 0 0 RecordItem.tag.Parameter.Skill[0].Loop int 1 run scoreboard players get $Loop Global
### Loop終了ならMaxLoopに更新
execute if score $Loop Global matches -1 store result block 0 0 0 RecordItem.tag.Parameter.Skill[0].Loop int 1 run scoreboard players get $MaxLoop Global

### リスト繰り下げ処理
execute if score $Loop Global matches ..-1 unless data block 0 0 0 RecordItem.tag.Parameter.Skill[0].Once run data modify block 0 0 0 RecordItem.tag.Parameter.Skill append from block 0 0 0 RecordItem.tag.Parameter.Skill[0]
execute if score $Loop Global matches ..-1 run data remove block 0 0 0 RecordItem.tag.Parameter.Skill[0]

### OnceでSkillがなくなった時タグ削除
execute unless data block 0 0 0 {RecordItem:{tag:{Parameter:{Skill:[{}]}}}} run tag @s remove HasSkill

### DataHolderに保存
execute at 1-0-0-0-0 run data modify entity @e[distance=0,tag=DataHolder,limit=1] Item.tag set from block 0 0 0 RecordItem.tag
