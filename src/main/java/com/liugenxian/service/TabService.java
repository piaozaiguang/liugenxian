package com.liugenxian.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.liugenxian.enums.ArtistRegion;
import com.liugenxian.enums.SortType;
import com.liugenxian.enums.TabCategory;
import com.liugenxian.model.Artist;
import com.liugenxian.model.Pagination;
import com.liugenxian.model.SearchParam;
import com.liugenxian.model.TabSearchParam;
import com.liugenxian.model.Tablature;
import com.liugenxian.model.admin.AdminTablature;
import com.liugenxian.repository.ArtistRepository;
import com.liugenxian.repository.TabRepository;
import com.liugenxian.supporter.KeyGenerator;

@Service
public class TabService {
	
	@Autowired
	private TabRepository tabRepository;
	
	@Autowired
	private ArtistRepository artistRepository;
	
	public void saveTab(AdminTablature adminTab) {
		Artist artistDB = artistRepository.selectDetailByName(adminTab.getArtist());
		if (artistDB == null || artistDB.getArtistNo() == 0) {
			if (adminTab.getArtistObj().getArtistNo() == 0) adminTab.getArtistObj().setArtistNo(KeyGenerator.getKey());;
			artistRepository.save(adminTab.getArtistObj());
		} else {
			artistRepository.update(adminTab.getArtistObj());
		}
		if (adminTab.getTabNo() == 0) adminTab.setTabNo(KeyGenerator.getKey());
		tabRepository.save(adminTab);
	}
	
	public Pagination<Tablature> getTabList(int pageNo, TabCategory tabCategory, ArtistRegion artistRegion, String artistName, SortType sortType) {
		TabSearchParam param = new TabSearchParam(pageNo);
		param.setSortType(sortType);
		param.setArtistName(artistName);
		param.setArtistRegion(artistRegion);
		param.setTabCategory(tabCategory);
		Pagination<Tablature> paging = new Pagination<Tablature>();
		paging.setList(tabRepository.selectList(param));
		paging.setTotalCount(tabRepository.selectTotalCount(param));
		paging.setCurrentPage(pageNo == 0 ? 1 : pageNo);
		return paging;
	}
	
	public AdminTablature getTabDetail(long tabNo, boolean isAdmin) {
		if (!isAdmin) {
			tabRepository.updateViewCnt(tabNo);
		}
		Tablature tab = tabRepository.selectDetail(tabNo);
		Artist artistDB = artistRepository.selectDetailByName(tab.getArtist());
		AdminTablature adminTab = new AdminTablature();
		adminTab.setTabNo(tab.getTabNo());
		adminTab.setTabCategory(tab.getTabCategory());
		adminTab.setArtist(tab.getArtist());
		adminTab.setArtistObj(artistDB);
		adminTab.setTitle(tab.getTitle());
		adminTab.setViewCnt(tab.getViewCnt());
		adminTab.setModYmdt(tab.getModYmdt());
		adminTab.setContent(tab.getContent());
		adminTab.setCreator(tab.getCreator());
		adminTab.setXiamiSid(tab.getXiamiSid());
		return adminTab;
	}

}
