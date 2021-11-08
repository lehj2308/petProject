package model.history;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("historyService")
public class HistoryServiceImpl implements HistoryService{

	@Autowired
	private MybatisHistoryDAO historyDAO;
	
	@Override
	public void insertHistory(HistoryVO vo) {
		// TODO Auto-generated method stub
		historyDAO.insertHistory(vo);
	}

	@Override
	public void updateHistory(HistoryVO vo) {
		// TODO Auto-generated method stub
		historyDAO.updateHistory(vo);
	}

	@Override
	public void deleteHistory(HistoryVO vo) {
		// TODO Auto-generated method stub
		historyDAO.deleteHistory(vo);
	}

	@Override
	public HistoryVO getHistory(HistoryVO vo) {
		// TODO Auto-generated method stub
		return historyDAO.getHistory(vo);
	}

	@Override
	public List<HistoryVO> getMyHistoryList(HistoryVO vo) {
		// TODO Auto-generated method stub
		return historyDAO.getMyHistoryList(vo);
	}

	@Override
	public List<HistoryVO> getHistoryList(HistoryVO vo) {
		// TODO Auto-generated method stub
		return historyDAO.getHistoryList(vo);
	}

}
