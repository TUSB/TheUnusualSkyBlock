
### マジックシールド解除

tellraw @s [{"translate":"%1$sの%2$sの効果が切れた。","color":"green","with":[{"selector":"@s"},{"translate":"マジックシールド","color":"white","hoverEvent":{"action":"show_text","value":[{"translate":"次に受けたダメージを無効化する。"}],"color":"white"}}]}]
scoreboard players reset @s MagicShield

function makeup:skill/act/black_mage/magic_shield/deactivate
