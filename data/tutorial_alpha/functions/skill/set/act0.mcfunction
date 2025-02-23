tellraw @s ["",{"translate":"[チュートリアル：%1$s]","bold":true,"with":[{"translate":"スキルの設定"}]},"\n",{"translate":"スキルの確認方法は理解できただろうか？\n次に、アイテムに職業スキルを付与してみよう。\n発動条件に合ったアイテムを手に持った状態で、スキルメニュー内の職業スキルをクリックすると、クリックしたスキルが付与される。\nアイテムの説明文にスキルの情報が書かれていれば、付与が成功している。\nすでにスキルが付与されたアイテムに対して上書きすることもできるぞ。\nまた、%1$sを押すとスキルを削除できる。","with":[{"text":"<<スキル削除>>","bold":true}]}]

function tutorial_alpha:skill/set/item

function makeup:tutorial_alpha/sound