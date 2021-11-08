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
		
		
		MultipartFile imgFile=vo.getpImg1File();
		
		String fileName = "\\img\\product\\Img1."+ imgFile.getOriginalFilename();
		System.out.println("1�����̸�: "+fileName);
		imgFile.transferTo(new File("F:\\KIM_0622\\workspace\\petProject\\project\\src\\main\\webapp"+fileName));
		vo.setpImg1(fileName);
		
		System.out.println(vo.getpImg2File());
		imgFile=vo.getpImg2File();
		if(!imgFile.getOriginalFilename().equals("")) {
			fileName = "\\img\\product\\Img2."+ imgFile.getOriginalFilename();
			System.out.println("2�����̸�: "+fileName);
			imgFile.transferTo(new File("F:\\KIM_0622\\workspace\\petProject\\project\\src\\main\\webapp"+fileName));
			vo.setpImg2(fileName);
		}
		else {
			fileName = "\\img\\upload.png";
			vo.setpImg2(fileName);
		}
		
		productService.insertProduct(vo);
		return "redirect:shop.do";
	}
	
	// ��ǰ ���� ����
	@RequestMapping("/updateProduct.do")
	public String updateProduct(ProductVO vo) throws IllegalStateException, IOException {

		MultipartFile imgFile=vo.getpImg1File();
		String fileName = null;
		if(!imgFile.getOriginalFilename().equals("")) {
			fileName = "\\img\\product\\Img1."+ imgFile.getOriginalFilename();
			System.out.println("1�����̸�: "+fileName);
			imgFile.transferTo(new File("F:\\KIM_0622\\workspace\\petProject\\project\\src\\main\\webapp"+fileName));
			vo.setpImg1(fileName);
			productService.updateImg1Product(vo);
		}
		imgFile=vo.getpImg2File();
		if(!imgFile.getOriginalFilename().equals("")) {
			fileName = "\\img\\product\\Img2."+ imgFile.getOriginalFilename();
			System.out.println("2�����̸�: "+fileName);
			imgFile.transferTo(new File("F:\\KIM_0622\\workspace\\petProject\\project\\src\\main\\webapp"+fileName));
			vo.setpImg2(fileName);
			productService.updateImg2Product(vo);
		}
		
		
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
		System.out.println(vo);
		List<ProductVO> productList = productService.getProductList(vo);
		model.addAttribute("productList", productList);
		System.out.println(productList);
		return "shop.jsp";
	}
}
