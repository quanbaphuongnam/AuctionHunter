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
	public String index(ModelMap map,@RequestParam("p") Optional<Integer> p,@RequestParam("status") int status) {
//        map.put("AllproductAdmins", productService.findAll());
        Pageable pageable = PageRequest.of(p.orElse(0),10);
        Page<Product> page = productService.findpage(pageable,status);
        map.addAttribute("ListProduct",page);
        int status2 = 0;
        long count2 = productService.count2(status2);
        map.addAttribute("count",count2);
		return "admin/product/index";
	}
	@RequestMapping(value = {"accept" }, method = RequestMethod.GET)
	public String accept(ModelMap map,@RequestParam("status") int status) {
		   map.put("ListProduct2", productService.findAccept(status));
       
        
		return "admin/product/index2";
	}
//	@RequestMapping(value = { "page" }, method = RequestMethod.GET)
//	public String page(ModelMap map,@RequestParam("status") int status,@RequestParam("p") Optional<Integer> p) {
////        map.put("AllproductAdmins", productService.findAll());
//        Pageable pageable = PageRequest.of(p.orElse(0),10);
//        Page<Product> page = productService.findAccept(pageable,status);
//        map.addAttribute("ListProduct",page);
//		return "admin/product/index";
//	}
}
