#> player:trigger/use/magma_cube_spawn_egg
###印版設置
execute as @e[tag=Sign,type=magma_cube,distance=..7] positioned as @s run function item:sign/set/

### トリガーリセット
scoreboard players reset @s UseMagmaCubeEgg
