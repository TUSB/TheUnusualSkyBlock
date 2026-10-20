
### マジックシールド発動

execute if score _ Level matches 1 run scoreboard players set @s MagicShield 1040
execute if score _ Level matches 2 run scoreboard players set @s MagicShield 1070

tellraw @s [{"translate":"%1$sに%2$sの効果！","color":"green","with":[{"selector":"@s"},{"translate":"マジックシールド","color":"white","hoverEvent":{"action":"show_text","value":[{"translate":"次に受けたダメージを無効化する。"}],"color":"white"}}]}]

function makeup:skill/act/black_mage/magic_shield/act0
