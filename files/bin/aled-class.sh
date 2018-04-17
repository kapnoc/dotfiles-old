#!/usr/bin/env sh


touch "$1.hpp"
touch "$1.cpp"

ALED="`echo "$1.hpp" | tr '[:lower:]' '[:upper:]' | tr '.' '_'`_"

echo "#ifndef $ALED" >> "$1.hpp"
echo "	#define $ALED" >> "$1.hpp"
echo >> "$1.hpp"
echo "class $1 {" >> "$1.hpp"
echo "public:" >> "$1.hpp"
echo "	$1();" >> "$1.hpp"
echo "	~$1();" >> "$1.hpp"
echo >> "$1.hpp"
echo "protected:" >> "$1.hpp"
echo >> "$1.hpp"
echo "private:" >> "$1.hpp"
echo "};" >> "$1.hpp"
echo >> "$1.hpp"
echo "#endif /* !$ALED */" >> "$1.hpp"

echo "#include \"$1.hpp\"" >> "$1.cpp"
echo >> "$1.cpp"
echo "$1::$1()" >> "$1.cpp"
echo "{" >> "$1.cpp"
echo "}" >> "$1.cpp"
echo >> "$1.cpp"
echo "$1::~$1()" >> "$1.cpp"
echo "{" >> "$1.cpp"
echo "}" >> "$1.cpp"

#mv "$1.hpp" "inc/"
#mv "$1.cpp" "src/"
