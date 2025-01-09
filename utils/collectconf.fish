function collectconf
    for dir in $argv
        if test -d "$dir"
            for file in "$dir"/*
                if test -f "$file"
                    echo "$file"
                end
            end
        end
    end | sort -t / -k 1
end
