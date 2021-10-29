package model.product;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

class ProductRowMapper implements RowMapper<ProductVO> {

	@Override
	public ProductVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		ProductVO data = new ProductVO();
		data.setpNum(rs.getInt("pNum"));
		data.setmId(rs.getString("mId"));
		data.setpName(rs.getString("pName"));
		data.setpBrand(rs.getString("pBrand"));
		data.setpTitle(rs.getString("pTitle"));
		data.setpContent(rs.getString("pContent"));
		data.setpPrice(rs.getInt("pPrice"));
		data.setpStock(rs.getInt("pStock"));
		data.setpTotal(rs.getInt("pTotal"));
		data.setpRating(rs.getDouble("pRating"));
		data.setpReview(rs.getInt("pReview"));
		data.setpCtgr(rs.getString("pCtgr"));
		data.setpImg1(rs.getString("pImg1"));
		data.setpImg2(rs.getString("pImg2"));
		data.setpImg3(rs.getString("pImg3"));
		data.setpDate(rs.getDate("pDate"));
		data.setmImg(rs.getString("mImg"));
		return data;
	}

}

@Repository("productDAO")
public class ProductDAO {

	private String insertSQL="INSERT INTO product(pNum, mId, pName, pBrand, pTitle, pContent, pPrice, pStock, pCtgr, pImg1, pImg2, pImg3, mImg) values((SELECT NVL(MAX(pNum), 0)+1 FROM product),?,?,?,?,?,?,?,?,?,?,?,?)";
	private String updateSQL="UPDATE product SET pName = ?, pBrand = ?, pTitle = ?, pContent = ?, pPrice = ?, pStock = ?, pCtgr = ? WHERE pNum = ?";
	private String deleteSQL="DELETE FROM product WHERE pNum = ?";
	private String getProductSQL="SELECT * FROM product WHERE pNum = ?";
	private String getProductListSQL="SELECT * FROM product ORDER BY pDate DESC";
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
		// 상품 등록
		public void insertProduct(ProductVO vo) {
			Object[] args = { vo.getmId(), vo.getpName(), vo.getpBrand(), vo.getpTitle(), vo.getpContent(), vo.getpPrice(), vo.getpStock(), vo.getpCtgr(), vo.getpImg1(), vo.getpImg2(), vo.getpImg3(), vo.getmImg()};
			jdbcTemplate.update(insertSQL, args);
		}
		
		// 상품 정보 수정
		public void updateProduct(ProductVO vo) {
			Object[] args = {vo.getpName(), vo.getpBrand(), vo.getpTitle(), vo.getpContent(), vo.getpPrice(), vo.getpStock(), vo.getpCtgr(), vo.getpNum()};
			jdbcTemplate.update(updateSQL, args);
		}
		
		// 상품 삭제
		public void deleteProduct(ProductVO vo) {
			jdbcTemplate.update(deleteSQL, vo.getpNum());
		}
		
		// 상품 정보
		public ProductVO getProduct(ProductVO vo) {
			Object[] args = { vo.getpNum()};
			ProductVO data = jdbcTemplate.queryForObject(getProductSQL, args, new ProductRowMapper());
			return data;
		}
		// 상품 리스트
		public List<ProductVO> getProductList(ProductVO vo) {
			return jdbcTemplate.query(getProductListSQL, new ProductRowMapper());
		}
	
}