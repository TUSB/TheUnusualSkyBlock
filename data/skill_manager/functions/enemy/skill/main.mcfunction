##############################
### 敵スキル発動
##############################

### 初期化
execute unless data block 0 0 0 RecordItem.tag.CurrentSkill[0].Initialized run function skill_manager:enemy/skill/initialize
### スキル発動判定
function skill_manager:enemy/skill/chance

### Loop読み込み
execute store result score $Loop Global run data get block 0 0 0 RecordItem.tag.CurrentSkill[0].Loop 1
execute store result score $MaxLoop Global run data get block 0 0 0 RecordItem.tag.CurrentSkill[0].MaxLoop 1
### Loop回数-1
scoreboard players remove $Loop Global 1
### Loop残存するなら更新
execute if score $Loop Global matches 0.. store result block 0 0 0 RecordItem.tag.CurrentSkill[0].Loop int 1 run scoreboard players get $Loop Global
### Loop終了ならMaxLoopに更新
execute unless score $Loop Global matches 0.. store result block 0 0 0 RecordItem.tag.CurrentSkill[0].Loop int 1 run scoreboard players get $MaxLoop Global

### リスト繰り下げ処理
execute if score $Loop Global matches ..-1 unless data block 0 0 0 RecordItem.tag.CurrentSkill[0].Once run data modify block 0 0 0 RecordItem.tag.CurrentSkill append from block 0 0 0 RecordItem.tag.CurrentSkill[0]
execute if score $Loop Global matches ..-1 run data remove block 0 0 0 RecordItem.tag.CurrentSkill[0]
