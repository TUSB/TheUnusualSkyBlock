#> skill:act/hunter/blast_spark/hit
#
# ブラストスパークヒット

# ダメージをロード
function skill:damage/load

execute at 0-0-0-0-2 as @e[tag=Enemy,nbt=!{AbsorptionAmount:2048f},distance=0] run function skill:act/hunter/blast_spark/hit1
