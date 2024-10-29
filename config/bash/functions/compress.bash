compress() {
    local file=$1
    local format=$2
    local options="${@:3}"
    local output=${file}.${format}

    case $format in
    zip)
        zip -r "$output" "$file" "$options"
        ;;
    tar)
        tar -cf "$output" "$file" "$options"
        ;;
    tar.gz | tgz)
        tar -czf "$output" "$file" "$options"
        ;;
    tar.bz2 | tbz2)
        tar -cjf "$output" "$file" "$options"
        ;;
    tar.xz | txz)
        tar -cJf "$output" "$file" "$options"
        ;;
    tar.lzma | tlz)
        tar --lzma -cf "$output" "$file" "$options"
        ;;
    7z)
        7z a "$output" "$file" "$options"
        ;;
    gz)
        gzip -c "$file" "$options" >"$output"
        ;;
    bz2)
        bzip2 -c "$file" "$options" >"$output"
        ;;
    xz)
        xz -c "$file" "$options" >"$output"
        ;;
    zst)
        zstd -c "$file" "$options" >"$output"
        ;;
    *)
        echo "Unsupported format: $format" >&2
        return 1
        ;;
    esac
    return 0
}
