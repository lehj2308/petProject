package controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import model.product.ProductServiceImpl;
import model.product.ProductVO;

@Controller
public class ProductController {

	@Autowired
	private ProductServiceImpl productService;
	
	// ��ǰ ���
	@RequestMapping("/insertProduct.do")
	public String insertProduct(ProductVO vo) throws IllegalStateException, IOException {
		MultipartFile img1File=vo.getpImg1File();
		String file1Name="mImg1"+vo.getpNum()+img1File.getOriginalFilename();
		System.out.println("�����̸�: "+file1Name);
		img1File.transferTo(new File("F:\\KIM_0622\\workspace\\petProject\\project\\src\\main\\webapp\\img\\"+file1Name));
		
		vo.setpImg1(file1Name);
		productService.insertProduct(vo);
		return "redirect:shop.do";
	}
	
	// ��ǰ ���� ����
	@RequestMapping("/updateProduct.do")
	public String updateProduct(ProductVO vo) throws IllegalStateException, IOException {
		MultipartFile img1File=vo.getpImg1File();
		String file1Name="mImg1"+vo.getpNum()+img1File.getOriginalFilename();
		System.out.println("�����̸�: "+file1Name);
		img1File.transferTo(new File("F:\\KIM_0622\\workspace\\petProject\\project\\src\\main\\webapp\\img\\"+file1Name));
		vo.setpImg1(file1Name);
		
		productService.updateProduct(vo);
		return "getProduct.do";
	}
	
	// ��ǰ ����
	@RequestMapping("/deleteProduct.do")
	public String deleteProduct(ProductVO vo) {
		productService.deleteProduct(vo);
		return "redirect:shop.do";
	}
	
	// ��ǰ ����
	@RequestMapping("/getProduct.do")
	public String getProduct(ProductVO vo, Model model) {
		vo = productService.getProduct(vo);
		model.addAttribute("product", vo);
		return "product.jsp";
	}
	
	// ��ǰ ���� ������
		@RequestMapping("/productForm.do")
		public String getProductForm(ProductVO vo, Model model) {
			vo = productService.getProduct(vo);
			model.addAttribute("product", vo);
			return "productForm.jsp";
		}
	
	// ��ǰ ����Ʈ
	@RequestMapping("/shop.do")
	public String getProductList(ProductVO vo, Model model) {
		List<ProductVO> productList = productService.getProductList(vo);
		model.addAttribute("productList", productList);
		return "shop.jsp";
	}
}
