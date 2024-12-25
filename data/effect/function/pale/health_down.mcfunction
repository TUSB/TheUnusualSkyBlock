#> effect:pale/health_down
### ペイル 体力調整

#もともとついている調整modifierを削除
execute run attribute @s generic.max_health modifier remove pale

execute if score @s PaleLevel matches 001 run attribute @s generic.max_health modifier add pale -0.1 add_multiplied_base
execute if score @s PaleLevel matches 002 run attribute @s generic.max_health modifier add pale -0.2 add_multiplied_base
execute if score @s PaleLevel matches 003 run attribute @s generic.max_health modifier add pale -0.3 add_multiplied_base
execute if score @s PaleLevel matches 004 run attribute @s generic.max_health modifier add pale -0.4 add_multiplied_base
execute if score @s PaleLevel matches 005 run attribute @s generic.max_health modifier add pale -0.5 add_multiplied_base
execute if score @s PaleLevel matches 006 run attribute @s generic.max_health modifier add pale -0.6 add_multiplied_base
execute if score @s PaleLevel matches 007 run attribute @s generic.max_health modifier add pale -0.7 add_multiplied_base
execute if score @s PaleLevel matches 008 run attribute @s generic.max_health modifier add pale -0.8 add_multiplied_base
execute if score @s PaleLevel matches 9.. run attribute @s generic.max_health modifier add pale -0.9 add_multiplied_base
