#> ai:skill/damage/can_be_blocked
execute unless data storage score_damage: Argument{CanBeBlocked:false} run function ai:skill/damage/is_using_shield
execute if data storage score_damage: Argument{CanBeBlocked:false} run function ai:skill/damage/apply_to_player
