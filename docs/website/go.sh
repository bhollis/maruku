source /Volumes/Alter/Ruby/set_env.sh

DIR=output/

WEBGEN="/Users/andrea/06MELANIA/censi-2006/andrea_web_site/wg/webgen"

ruby -rubygems -I~/maruku/lib -I${WEBGEN}/lib ${WEBGEN}/bin/webgen run
