function extract
  set -l file $argv[1]
  set -l ext (string split -r '.' $file)[-1]
  set -l options $argv[2..]

  switch $ext
    case tar
      tar -xvf "$file" "$options"
    case gz tgz
      tar -xvzf "$file" "$options"
    case bz2 tbz2
      tar -xvjf "$file" "$options"
    case xz txz
      tar -xvJf "$file" "$options"
    case lzma tlz
      tar -xv --lzma "$file" "$options"
    case zip
      unzip "$file" "$options"
    case rar
      unrar x "$file" "$options"
    case 7z
      7z x "$file" "$options"
    case gz
      gunzip "$file" "$options"
    case bz2
      bunzip2 "$file" "$options"
    case xz
      unxz "$file" "$options"
    case lzma
      unlzma "$file" "$options"
    case '*'
      echo "Unsupported file type: $ext" >&2
      return 1
  end
  return 0
end
