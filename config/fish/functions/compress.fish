function compress
    set -l file $argv[1]
    set -l format $argv[2]
    set -l options $argv[3..]
    set -l output "$file.$format"

    switch $format
        case zip
            zip -r "$output" "$file" "$options"
        case tar
            tar -cf "$output" "$file" "$options"
        case tar.gz tgz
            tar -czf "$output" "$file.tar.gz" "$file" "$options"
        case tar.bz2 tbz
            tar -cjf "$output" "$file" "$options"
        case tar.xz txz
            tar -cJf "$output" "$file" "$options"
        case tar.lzma tlz
            tar --lzma -cf "$output" "$file" "$options"
        case 7z
            7z a "$output" "$file" "$options"
        case gz
            gzip -c "$file" "$options" >"$output"
        case bz2
            bzip2 -c "$file" "$options" >"$output"
        case xz
            xz -c "$file" "$options" >"$output"
        case zst
            zstd -c "$file" "$options" >"$output"
        case '*'
            echo "Unsupported format: $format" >&2
            return 1
    end
    return 0
end
