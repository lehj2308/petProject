package model.review;

import org.springframework.stereotype.Repository;

@Repository("reviewDAO")
public class ReviewDAO {

	private String insertSQL="INSERT INTO review() values()";
	private String updateSQL="UPDATE review set where rNum = ?";
	private String updateRatingSQL="UPDATE product SET pTotal = ?, pRating = ?, pReview = ?, WHERE pNum = ?";
	private String deleteSQL="DELETE FROM review WHERE rNum = ?";
	private String getProductSQL="SELECT * FROM review WHERE rNum = ?";
	private String getProductListSQL="SELECT * FROM review";
}