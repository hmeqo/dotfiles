function extract
    set -l file "$argv[1]"
    set -l stem (string split -m 1 '.' "$file")[1]
    set -l ext (string split -m 1 '.' "$file")[2]

    switch $ext
        case tar
            mkdir "$stem"
            tar -xvf "$file" -C "$stem"
        case tar.gz tgz
            mkdir "$stem"
            tar -xvzf "$file" -C "$stem"
        case tar.bz2 tbz2
            mkdir "$stem"
            tar -xvjf "$file" -C "$stem"
        case tar.xz txz
            mkdir "$stem"
            tar -xvJf "$file" -C "$stem"
        case tar.lzma tlz
            mkdir "$stem"
            tar -xv --lzma "$file" -C "$stem"
        case zip
            unzip "$file"
        case rar
            unrar x "$file"
        case 7z
            7z x "$file"
        case gz
            gunzip "$file"
        case bz2
            bunzip2 "$file"
        case xz
            unxz "$file"
        case lzma
            unlzma "$file"
        case '*'
            echo "Unsupported file type: $ext" >&2
            return 1
    end
    return 0
end
