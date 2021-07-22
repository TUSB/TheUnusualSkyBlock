#MP確認
execute unless score @s MP >= _ MP run function makeup:skill/practice/error/low_mp
execute if score @s MP >= _ MP run function skill:practice/success
