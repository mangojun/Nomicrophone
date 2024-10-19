# 설치한 적 없다면 팩 설치
execute unless data storage nomic:temp id run setblock 0 -64 0 minecraft:yellow_shulker_box
execute unless data storage nomic:temp id run scoreboard objectives add nomic.data dummy
execute unless data storage nomic:temp id run scoreboard players set .next nomic.data 0
execute unless data storage nomic:temp id run scoreboard players set .index nomic.data 0
execute unless data storage nomic:temp id run data merge storage nomic:temp {id: 0, index: 0}
execute unless data storage nomic:temp id run data merge storage nomic:global {data: []}

# 로그
tellraw @a [{"text": "[NOMIC] ", "color": "aqua"}, {"text": "Reloaded!", "color": "white"}]