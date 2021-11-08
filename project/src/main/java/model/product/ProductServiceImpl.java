package model.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("productService")
public class ProductServiceImpl implements ProductService{

	@Autowired
	private MybatisProductDAO productDAO;
	
	@Override
	public void insertProduct(ProductVO vo) {
		// TODO Auto-generated method stub
		productDAO.insertProduct(vo);
	}

	@Override
	public void updateProduct(ProductVO vo) {
		// TODO Auto-generated method stub
		productDAO.updateProduct(vo);
	}
	
	@Override
	public void updateImg1Product(ProductVO vo) {
		// TODO Auto-generated method stub
		productDAO.updateImg1Product(vo);
	}

	@Override
	public void updateImg2Product(ProductVO vo) {
		// TODO Auto-generated method stub
		productDAO.updateImg2Product(vo);
	}

	@Override
	public void deleteProduct(ProductVO vo) {
		// TODO Auto-generated method stub
		productDAO.deleteProduct(vo);
	}

	@Override
	public ProductVO getProduct(ProductVO vo) {
		// TODO Auto-generated method stub
		return productDAO.getProduct(vo);
	}

	@Override
	public List<ProductVO> getProductList(ProductVO vo) {
		// TODO Auto-generated method stub
		return productDAO.getProductList(vo);
	}

}
