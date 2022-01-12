package com.demo.controllers.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.MimeTypeUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.demo.models.Product;
import com.demo.services.ProductService;

@RestController
@RequestMapping("ajax")
public class AjaxController {
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = { "", "search" }, method = RequestMethod.GET,
	produces = MimeTypeUtils.APPLICATION_JSON_VALUE)
	public List<String> search(@RequestParam("term")String term) {
		return productService.searchByTerm(term);
	}
}	
//	@RequestMapping(value = { "", "findall" }, method = RequestMethod.GET,
//			produces = MimeTypeUtils.APPLICATION_JSON_VALUE)
//			public List<ProductAjax> findall() {
//				return productService.findAllAjax();
//			}
//	
//	@RequestMapping(value = { "", "findallbycategory" }, method = RequestMethod.GET,
//			produces = MimeTypeUtils.APPLICATION_JSON_VALUE)
//			public List<ProductAjax> findallbycategory(@RequestParam("categoryId")int categoryId) {
//				return productService.findAllAjaxbyCategoryId(categoryId);
//			}
//	
//}

