name "webserver"
description "Web Servers"
run_list "recipe[ARC]","recipe[apache]"
default_attributes({
	"company" => "ARC"
})
