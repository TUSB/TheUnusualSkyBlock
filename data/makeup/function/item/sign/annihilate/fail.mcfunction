#> makeup:item/sign/annihilate/fail
#
# 全滅の印板 失敗時
#
# @within function item:sign/click/annihilate

playsound entity.evoker.prepare_summon block @a[distance=..16] ~ ~ ~ 2 0 0
particle witch ~ ~0.5 ~ 1 0.25 1 1 20 force
tellraw @s {"translate":"全滅の印板の力が何者かにかき消されてしまった。","color":"#BD0000","bold":true}
