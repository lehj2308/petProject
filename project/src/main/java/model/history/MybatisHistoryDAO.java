package model.history;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class MybatisHistoryDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	@Transactional
	public void insertHistory(HistoryVO vo) {
		mybatis.insert("dao.insertHistory", vo);
		mybatis.update("dao.updateStockProduct", vo);
	}

	public void updateHistory(HistoryVO vo) {
		mybatis.update("dao.updateHistory", vo);
	}

	public void deleteHistory(HistoryVO vo) {
		mybatis.delete("dao.deleteHistory", vo);
	}

	public HistoryVO getHistory(HistoryVO vo) {
		return (HistoryVO) mybatis.selectOne("dao.getHistory", vo);
	}

	public List<HistoryVO> getMyHistoryList(HistoryVO vo) {
		return mybatis.selectList("dao.getMyHistoryList", vo);
	}

	public List<HistoryVO> getHistoryList(HistoryVO vo) {
		return mybatis.selectList("dao.getHistoryList", vo);
	}

}