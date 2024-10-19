# 삭제
scoreboard objectives remove nomic.data
tag @a remove nomic.new
setblock 0 -64 0 minecraft:air
data remove storage nomic:temp id
data remove storage nomic:temp index
data remove storage nomic:global data
data remove entity @n[tag=nomic.ui, type=minecraft:chest_minecart] Items
kill @e[tag=nomic.ui]

# 로그
tellraw @a [{"text": "[NOMIC] ", "color": "aqua"}, {"text": "Removed!", "color": "white"}]