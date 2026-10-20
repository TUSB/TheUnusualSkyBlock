
### コールCマジック

#> コール系スキルのfunction構造
#
# コール系の中身は似たようなものが多いため、主な処理はコールCマジックにまとめる
#

scoreboard players add _ Level 100

# クリスタル召喚
execute rotated ~ 0 positioned ^ ^1 ^3.5 run function skill:act/summoner/call_crystal_attack/summon/random
