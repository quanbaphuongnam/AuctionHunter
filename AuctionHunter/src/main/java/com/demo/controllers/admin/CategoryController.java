package com.demo.controllers.admin;

import java.util.Date;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.demo.helpers.UploadHelper;
import com.demo.models.Brand;
import com.demo.models.Category;
import com.demo.models.Product;
import com.demo.models.ProductPhoto;
import com.demo.services.BrandService;
import com.demo.services.CategoryService;
import com.demo.services.HistoryAuctionService;
import com.demo.services.InvoiceService;
import com.demo.services.ProductService;
@Controller
@RequestMapping(value = "category")
public class CategoryController {
	@Autowired
	private CategoryService categoryService;

	@Autowired
	private BrandService brandService;

	
	@RequestMapping(value ={"","index"}, method = RequestMethod.GET)
	public String index(ModelMap modelMap,Category category,Brand brand) {
		modelMap.put("ListCategory", categoryService.findAllAvailability());
		modelMap.put("ListBrand", brandService.findAllAvailability());
		return "admin/category/index";
	}
	@RequestMapping(value = "addcategory", method = RequestMethod.POST)
	public String addcategory(@ModelAttribute("category") Category category) {
			category.setIsDelete(true);;
			categoryService.save(category);
		return "redirect:/category/index";
	}
	@RequestMapping(value = "addbrand", method = RequestMethod.POST)
	public String addbrand(@ModelAttribute("brand") Brand brand) {
			brand.setIsDelete(1);;
			brandService.save(brand);
		return "redirect:/category/index";
	}
	
	@RequestMapping(value = "deletecategory/{id}", method = RequestMethod.GET)
	public String deletecategory(@PathVariable("id")int id) {
		Category category = categoryService.find(id);
		category.setIsDelete(false);;
		categoryService.save(category);
		return "redirect:/category/index";
	}
	@RequestMapping(value = "deletebrand/{id}", method = RequestMethod.GET)
	public String deletebrand(@PathVariable("id")int id) {
		Brand brand = brandService.find(id);
		brand.setIsDelete(0);;
		brandService.save(brand);
		return "redirect:/category/index";
	}

}
