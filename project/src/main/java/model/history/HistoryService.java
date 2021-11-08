package model.history;

import java.util.List;

public interface HistoryService {

	void insertHistory(HistoryVO vo);

	void updateHistory(HistoryVO vo);
	
	void deleteHistory(HistoryVO vo);

	HistoryVO getHistory(HistoryVO vo);

	List<HistoryVO> getMyHistoryList(HistoryVO vo);

	List<HistoryVO> getHistoryList(HistoryVO vo);
}
