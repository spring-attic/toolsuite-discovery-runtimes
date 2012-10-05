update() {
	OLD=$1
	NEW=$2
	find . -name MANIFEST.MF | xargs sed -i '' -e "s/Bundle-Version: $OLD/Bundle-Version: $NEW/"
	find . -name feature.xml | xargs sed -i '' -e "s/$OLD/$NEW/"
	find . -name p2.inf | xargs sed -i '' -e "s/$OLD/$NEW/"
	find . -name pom.xml | xargs sed -i '' -e "s/$OLD/$NEW/"
	find . -name plugin.xml | xargs sed -i '' -e "s/$OLD/$NEW/"
}

update $1 $2
