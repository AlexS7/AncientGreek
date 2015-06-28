class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        //"/"(view:"/index")
        "/" {
            controller = "phrase"
            action = "create"
        }
        "500"(view:"/error")
        "404"(view:"404")
	}
}
