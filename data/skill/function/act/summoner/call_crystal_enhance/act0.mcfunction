
### コールCエンハンス

#> コール系スキルのfunction構造
#
# コール系の中身は似たようなものが多いため、主な処理はコールCマジックにまとめる
#

scoreboard players add _ Level 200

# クリスタル召喚
execute rotated ~ 0 positioned ^ ^1 ^3.5 run function skill:act/summoner/call_crystal_attack/summon/random

### クリスタル支援共通

###火 火炎耐性 攻撃力UP 体力増強
###雷 移動速度 採掘上昇 D.Grace
###氷 耐性 衝撃吸収 Conduit
  
###光 リジェネ キアリク Glowing
###闇 Ｍリフレ 満腹度↑ 暗視付与 
