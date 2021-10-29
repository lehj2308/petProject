package model.history;

import org.springframework.stereotype.Repository;

@Repository("historyDAO")
public class HistoryDAO {

	private String insertSQL="INSERT INTO history (hNum,mId,pNum,pName,hPrice,hAmount) VALUES((SELECT NVL(MAX(hNum), 0)+1 FROM histroy),?,?,?,?,?)";
	private String updateSQL="UPDATE HISTORY SET pName = ? WHERE hNum = ?";
	private String deleteSQL="DELETE FROM history WHERE hNum = ?";
	private String MyHistorySQL="SELECT * FROM history WHERE mId = ?";
	private String AllHistorySQL="SELECT * FROM history";
}