FT_FIN=$(($FT_LINE2+1))
cat /etc/passwd | grep -v '^#' | sed -n 'n;p' | cut -d ':' -f 1| rev | sort -r | sed -n "$FT_LINE1,$FT_LINE2 p;$FT_FIN q" | sed 's/$/,/g' | tr '\n' ' ' | sed 's/, $/./' | tr -d '\n'
