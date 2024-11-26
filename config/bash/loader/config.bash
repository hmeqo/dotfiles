# for file in "$DOTFILES/config/bash/conf.d/"*; do
#     [[ ! -f "$file" ]] || . "$file"
# done
for file in "$DOTFILES/config/bash/functions/"*; do
    [[ ! -f "$file" ]] || . "$file"
done
