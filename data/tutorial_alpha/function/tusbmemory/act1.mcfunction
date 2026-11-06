#> tutorial_alpha:tusbmemory/act1

tellraw @s ["",{"translate":"[チュートリアル：%1$s]","bold":true,"with":[{"translate":"TUSBメモリーの注意点"}]},"\n",{"translate":"TUSBMはスキルの上書き・削除が出来ない。\n残り使用回数が0になると、耐久値に関わらずアイテムは破壊される。\nTUSBMには職業スキルにはない未知のスキルが付与されていることがある。\nスキルのインターバルや発動条件も職業スキルとは異なる場合がある。"}]

function makeup:tutorial_alpha/sound
