package model.product;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MybatisProductDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertProduct(ProductVO vo) {
		mybatis.insert("dao.insertProduct", vo);
	}
	public void updateProduct(ProductVO vo) {
		mybatis.update("dao.updateProduct", vo);
	}
	public void updateImg1Product(ProductVO vo) {
		mybatis.update("dao.updateImg1Product", vo);
	}
	public void updateImg2Product(ProductVO vo) {
		mybatis.update("dao.updateImg2Product", vo);
	}
	public void deleteProduct(ProductVO vo) {
		mybatis.delete("dao.deleteProduct", vo);
	}
	public ProductVO getProduct(ProductVO vo) {
		return (ProductVO)mybatis.selectOne("dao.getProduct", vo);
	}
	public List<ProductVO> getProductList(ProductVO vo){
	      return mybatis.selectList("dao.getProductList",vo);
	}

}