package com.demo.controllers.admin;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.models.Product;
import com.demo.services.ProductService;

@Controller
@RequestMapping(value = "productadmin")
public class ProductAdminController {
	@Autowired
	private ProductService productService;

	@RequestMapping(value = { "", "index" }, method = RequestMethod.GET)
	public String index(ModelMap map,@RequestParam("p") Optional<Integer> p) {
//        map.put("AllproductAdmins", productService.findAll());
        Pageable pageable = PageRequest.of(p.orElse(0),10);
        Page<Product> page = productService.findpage(pageable);
        map.addAttribute("ListProduct",page);
		return "admin/product/index";
	}
	
}
