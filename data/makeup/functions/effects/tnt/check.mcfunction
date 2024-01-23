
### トント 被ダメージ
tellraw @s ["",{"text":"t","font":"icon","hoverEvent":{"action":"show_text","value":{"interpret":true,"storage":"effects:","nbt":"BadEffectsName.Tnt"}}}," ",{"score":{"name":"_","objective":"TntCount"},"color":"dark_red","bold":true}]
execute if score @s TntCount matches 0.. run playsound minecraft:entity.creeper.primed master @a[distance=..16] ~ ~ ~ 2 2
