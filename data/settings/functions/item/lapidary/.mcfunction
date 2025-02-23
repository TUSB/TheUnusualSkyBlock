#成功フラグ初期化
scoreboard players set _ Ret 0
#Upgrade
execute if predicate settings:item/lapidary/upgrade/add_dark/ run function settings:item/lapidary/upgrade/add_dark
execute if predicate settings:item/lapidary/upgrade/add_fire/ run function settings:item/lapidary/upgrade/add_fire
execute if predicate settings:item/lapidary/upgrade/add_ice/ run function settings:item/lapidary/upgrade/add_ice
execute if predicate settings:item/lapidary/upgrade/add_light/ run function settings:item/lapidary/upgrade/add_light
execute if predicate settings:item/lapidary/upgrade/add_lightning/ run function settings:item/lapidary/upgrade/add_lightning
execute if predicate settings:item/lapidary/upgrade/blade/ run function settings:item/lapidary/upgrade/blade
execute if predicate settings:item/lapidary/upgrade/blast_protection/ run function settings:item/lapidary/upgrade/blast_protection
execute if predicate settings:item/lapidary/upgrade/boost_dark/ run function settings:item/lapidary/upgrade/boost_dark
execute if predicate settings:item/lapidary/upgrade/boost_fire/ run function settings:item/lapidary/upgrade/boost_fire
execute if predicate settings:item/lapidary/upgrade/boost_ice/ run function settings:item/lapidary/upgrade/boost_ice
execute if predicate settings:item/lapidary/upgrade/boost_light/ run function settings:item/lapidary/upgrade/boost_light
execute if predicate settings:item/lapidary/upgrade/boost_lightning/ run function settings:item/lapidary/upgrade/boost_lightning
execute if predicate settings:item/lapidary/upgrade/double_break/ run function settings:item/lapidary/upgrade/double_break
execute if predicate settings:item/lapidary/upgrade/dragon_scale/ run function settings:item/lapidary/upgrade/dragon_scale
execute if predicate settings:item/lapidary/upgrade/element/ run function settings:item/lapidary/upgrade/element
execute if predicate settings:item/lapidary/upgrade/evolution/ run function settings:item/lapidary/upgrade/evolution
execute if predicate settings:item/lapidary/upgrade/feather_falling/ run function settings:item/lapidary/upgrade/feather_falling
execute if predicate settings:item/lapidary/upgrade/fire_protection/ run function settings:item/lapidary/upgrade/fire_protection
execute if predicate settings:item/lapidary/upgrade/kamui/ run function settings:item/lapidary/upgrade/kamui
execute if predicate settings:item/lapidary/upgrade/knockback/ run function settings:item/lapidary/upgrade/knockback
execute if predicate settings:item/lapidary/upgrade/life/ run function settings:item/lapidary/upgrade/life
execute if predicate settings:item/lapidary/upgrade/mana/ run function settings:item/lapidary/upgrade/mana
execute if predicate settings:item/lapidary/upgrade/mystery/ run function settings:item/lapidary/upgrade/mystery
execute if predicate settings:item/lapidary/upgrade/mystic/ run function settings:item/lapidary/upgrade/mystic
execute if predicate settings:item/lapidary/upgrade/philosopher/ run function settings:item/lapidary/upgrade/philosopher
execute if predicate settings:item/lapidary/upgrade/projectile_protection/ run function settings:item/lapidary/upgrade/projectile_protection
execute if predicate settings:item/lapidary/upgrade/protection/ run function settings:item/lapidary/upgrade/protection
execute if predicate settings:item/lapidary/upgrade/purification/ run function settings:item/lapidary/upgrade/purification
execute if predicate settings:item/lapidary/upgrade/spirit/ run function settings:item/lapidary/upgrade/spirit
execute if predicate settings:item/lapidary/upgrade/wave_of_element/ run function settings:item/lapidary/upgrade/wave_of_element
execute if predicate settings:item/lapidary/upgrade/yin_yang/ run function settings:item/lapidary/upgrade/yin_yang
#Combine
execute if score _ Calc matches 4 if predicate settings:item/lapidary/combine/dragon_scale/ run function settings:item/lapidary/combine/dragon_scale
execute if score _ Calc matches 3 if predicate settings:item/lapidary/combine/element/ run function settings:item/lapidary/combine/element
execute if score _ Calc matches 2 if predicate settings:item/lapidary/combine/evolution/ run function settings:item/lapidary/combine/evolution
execute if score _ Calc matches 2 if predicate settings:item/lapidary/combine/kamui/ run function settings:item/lapidary/combine/kamui
execute if score _ Calc matches 2 if predicate settings:item/lapidary/combine/mystic/ run function settings:item/lapidary/combine/mystic
execute if score _ Calc matches 3 if predicate settings:item/lapidary/combine/philosopher/ run function settings:item/lapidary/combine/philosopher
execute if score _ Calc matches 2 if predicate settings:item/lapidary/combine/purification/ run function settings:item/lapidary/combine/purification
execute if score _ Calc matches 2 if predicate settings:item/lapidary/combine/spirit/ run function settings:item/lapidary/combine/spirit
execute if score _ Calc matches 2 if predicate settings:item/lapidary/combine/yin_yang/ run function settings:item/lapidary/combine/yin_yang
#成功フラグを返す
return run scoreboard players get _ Ret
