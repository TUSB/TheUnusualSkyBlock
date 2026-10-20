
### マジックシールド処理

scoreboard players remove @s[scores={MagicShield=..999}] MagicShield 1
#効果切れ
execute if entity @s[scores={MagicShield=..0}] run function skill:act/black_mage/magic_shield/deactivate
#耐性付与
effect give @s[scores={MagicShield=20..}] minecraft:resistance 1 4 false
#ダメージを受けるとカウントダウン開始
execute if entity @s[scores={MagicShield=1000..},nbt=!{HurtTime:0s}] run function skill:act/black_mage/magic_shield/activate

function makeup:skill/act/black_mage/magic_shield/tick
