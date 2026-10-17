#!/bin/bash
# Colores (usando códigos Polybar)
WHITE="%{F#DCD7BA}"
GOLD="%{F#E6C384}"
RESET="%{F-}"

# Kanjis para fecha
YEAR_KANJI="年"
MONTH_KANJI="月"
DAY_KANJI="日"

# Obtener fecha actual
DATE=$(date "+%Y${YEAR_KANJI}%m${MONTH_KANJI}%d${DAY_KANJI}")
TIME=$(date "+%H:%M")

# Formato final: kanjis en blanco, números en dorado
echo "${WHITE} ${GOLD}${DATE} ${WHITE} ${GOLD}${TIME}${RESET}"
