##############################
### 呼魂発動
##############################

#演出
function makeup:skill/act/ninja/kodama/act0
#アイテムをTP
execute if score _ Level matches 1 run tp @e[distance=..20,type=item,nbt={Invulnerable:false},tag=!Unmoved] ~ ~ ~
execute if score _ Level matches 2 run tp @e[distance=..30,type=item,nbt={Invulnerable:false},tag=!Unmoved] ~ ~ ~