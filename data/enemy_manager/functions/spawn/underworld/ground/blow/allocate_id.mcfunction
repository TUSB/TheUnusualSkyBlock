##############################
### モブID分岐 - Underworld Ground Blow
##############################

execute if entity @s[tag=Circuit] run function enemy_manager:spawn/underworld/ground/blow/circuit/allocate_subfolder
execute if entity @s[tag=Ghoul] run function enemy_manager:spawn/underworld/ground/blow/ghoul/allocate_subfolder
execute if entity @s[tag=Mushroom] run function enemy_manager:spawn/underworld/ground/blow/mushroom/allocate_subfolder
execute if entity @s[tag=Titeizin] run function enemy_manager:spawn/underworld/ground/blow/titeizin/allocate_subfolder
execute if entity @s[tag=BeldeCrystal] run function enemy_manager:summon/underworld/ground/blow/belde_crystal_30
execute if entity @s[tag=BubbleSpider] run function enemy_manager:summon/underworld/ground/blow/bubble_spider_30
execute if entity @s[tag=JealousyMonster] run function enemy_manager:summon/underworld/ground/blow/jealousy_monster_30
execute if entity @s[tag=ShadowKnight] run function enemy_manager:summon/underworld/ground/blow/shadow_knight_15
execute if entity @s[tag=TutigumoBeby] run function enemy_manager:summon/underworld/ground/blow/tutigumo_beby_30
execute if entity @s[tag=UndergraundSilverfish] run function enemy_manager:summon/underworld/ground/blow/undergraund_silverfish_30
execute if entity @s[tag=UndergraundSlime] run function enemy_manager:summon/underworld/ground/blow/undergraund_slime_30
