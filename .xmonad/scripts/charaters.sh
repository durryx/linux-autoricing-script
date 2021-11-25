charaters=( "π@PI" \
       	"×@vector_product" \
	"·@dot_product" \
	"ε" \
	"Φ@flow" \
	"α@alpha" \
	"~@tilde")

string=$(printf "${charaters[*]}" | sed 's| |\n|g;s|@|    |g' | \
	dmenu -i -p "Select charaters to copy on clipboard:" -l 3 | cut -d " " -f 1)

echo $string | xclip -selection clipboard

