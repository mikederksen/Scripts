find "$(pwd)" -type f -name "*.md" | while read fname; do
    if sed -n '1p' $fname | grep -q -e "^---$"; then
        echo $fname found
    else
        echo $fname not found
	sed -i '1i---' $fname
	sed -i '1i---' $fname
    fi
done
