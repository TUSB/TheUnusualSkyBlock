tellraw @a[distance=..7] ["",{"translate":"[チュートリアル：%1$s]","bold":true,"with":[{"translate":"スキルの設定"}]},"\n",{"translate":"スキルの確認方法は大体理解できましたか？\n次に、アイテムに職業スキルを付与してみよう。\n職業スキルを付与できるアイテムはいくつかある。\nそのアイテムを手に持った状態で、スキルメニュー内の職業スキルをクリックすると、\nクリックしたスキルが付与される。アイテムの説明文にスキルの情報が書かれていれば、付与に成功したことになる。\nすでにスキルが付与されたアイテムに対して上書きすることもできるぞ。"}]

execute as @a[distance=..7] run function tutorial_alpha:skill/use/item

function makeup:tutorial_alpha/sound