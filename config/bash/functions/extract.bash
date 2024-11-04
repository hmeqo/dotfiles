extract() {
    local file="$1"
    local stem="$(basename "$file" | sed -e 's/\.[^\/]*$//')"
    local ext="$(echo "$file" | sed -e "s/^$stem//")"

    case "$ext" in
    .tar)
        mkdir "$stem"
        tar -xvf "$file" -C "$stem"
        ;;
    .tar.gz | .tgz)
        mkdir "$stem"
        tar -xvzf "$file" -C "$stem"
        ;;
    .tar.bz2 | .tbz2)
        mkdir "$stem"
        tar -xvjf "$file" -C "$stem"
        ;;
    .tar.xz | .txz)
        mkdir "$stem"
        tar -xvJf "$file" -C "$stem"
        ;;
    .tar.lzma | .tlz)
        mkdir "$stem"
        tar -xv --lzma "$file" -C "$stem"
        ;;
    .zip)
        unzip "$file"
        ;;
    .rar)
        unrar x "$file"
        ;;
    .7z)
        7z x "$file"
        ;;
    .gz)
        gunzip "$file"
        ;;
    .bz2)
        bunzip2 "$file"
        ;;
    .xz)
        unxz "$file"
        ;;
    .lzma)
        unlzma "$file"
        ;;
    *)
        echo "Unsupported file type: $ext" >&2
        return 1
        ;;
    esac
    return 0
}
