extract() {
    local file="$1"
    local ext="${file##*.}"
    local options="${@:2}"

    case "$ext" in
    .tar)
        tar -xvf "$file" "$options"
        ;;
    .tar.gz | .tgz)
        tar -xvzf "$file" "$options"
        ;;
    .tar.bz2 | .tbz2)
        tar -xvjf "$file" "$options"
        ;;
    .tar.xz | .txz)
        tar -xvJf "$file" "$options"
        ;;
    .tar.lzma | .tlz)
        tar -xv --lzma "$file" "$options"
        ;;
    .zip)
        unzip "$file" "$options"
        ;;
    .rar)
        unrar x "$file" "$options"
        ;;
    .7z)
        7z x "$file" "$options"
        ;;
    .gz)
        gunzip "$file" "$options"
        ;;
    .bz2)
        bunzip2 "$file" "$options"
        ;;
    .xz)
        unxz "$file" "$options"
        ;;
    .lzma)
        unlzma "$file" "$options"
        ;;
    *)
        echo "Unsupported file type: $ext" >&2
        return 1
        ;;
    esac
    return 0
}
