#> makeup:job/level_up/text
execute if score _ Job matches ..49 run tellraw @s [{"translate":"%1$s はレベルアップした！！ LV: %2$s → %3$s","with":[{"selector":"@s"},{"score":{"name":"_","objective":"Level"},"color":"green"},{"score":{"name":"_","objective":"Job"},"color":"green"}]}]
execute if score _ Job matches 50.. if score _ Exp matches ..49 run tellraw @s [{"translate":"%1$s はレベルアップした！！ LV: %2$s → %3$s CP: %4$s → %5$s","with":[{"selector":"@s"},{"score":{"name":"_","objective":"Level"},"color":"green"},{"score":{"name":"_","objective":"Job"},"color":"green"},{"score":{"name":"_","objective":"Exp"},"color":"green"},{"score":{"name":"_","objective":"AllExp"},"color":"green"}]}]
execute if score _ AllExp matches 50.. run tellraw @s [{"translate":"%1$s のレベルはこれ以上あがらない。","with":[{"selector":"@s"}]}]
