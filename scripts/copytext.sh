text=$(zenity --entry --title="输入文本" --text="请输入要复制的文本")

if [ $? -eq 0 ]; then
    echo $text | xclip -selection clipboard
else
    exit 0
fi
