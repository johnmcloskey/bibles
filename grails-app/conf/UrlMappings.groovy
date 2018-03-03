class UrlMappings {

//	static mappings = {
//        "/$controller/$action?/$id?(.$format)?"{
//            constraints {
//                // apply constraints here
//            }
//        }
//
//        "/"(view:"/index")
//        "500"(view:'/error')
//	}
	
	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}
		"/rest/$controller/$book?/$chapter?/$verse?"(action: "read")
		"/"(view:"/index")
		"500"(view:'/error')
	}
}
