tellraw @s ["",{"translate":"[チュートリアル：%1$s]","bold":true,"with":[{"translate":"スキルの確認"}]},"\n",{"translate":"メニューを表示して%1$sをクリックすると、スキルメニューが開きます。\n一番上の段に各職業のアイコン%2$s、共通スキルアイコン%3$s、\nショートカットアイコン%4$sが表示されます。\n各職業のアイコンをクリックすると覚えているスキルが表示されるので、確認してみましょう。\nチュートリアルに限り特別に全職業がLv25になっているため、\nLv25までに覚えられるスキルが表示されます。","with":[{"translate":"・スキル","bold":true,"clickEvent": {"action": "run_command","value": "/trigger ChangeSkill set 1"}},{"text":"KNHWBS","font":"icon","color":"aqua"},{"text":"C","font":"icon","color":"aqua"},{"text":"✦","color":"light_purple"}]}]

trigger ChangeSettings set 0

function makeup:tutorial_alpha/sound