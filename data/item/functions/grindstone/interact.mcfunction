#砥石をコマブロに置換してUI無効化する
#1tick遅らせる
schedule function item:grindstone/schedule 1t
tag @s add InteractGrindstone
#トリガー解除
advancement revoke @s only item:interact/grindstone
