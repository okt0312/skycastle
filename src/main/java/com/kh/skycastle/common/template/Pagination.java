package com.kh.skycastle.common.template;

import com.kh.skycastle.common.model.vo.PageInfo;

public class Pagination
{
    // 총갯수, 요청한페이지, 페이징바목록최대수, 게시글최대수 전달받아서
    // 계산한 후 PageInfo에 담은 후 리턴하는 getPageInfo메소드
    public static PageInfo getPageInfo(int listCount, int currentPage, 
                                       int pageLimit, int boardLimit)
    {
        // * maxPage : 제일 마지막 페이지수 
        int maxPage = (int)Math.ceil((double)listCount/boardLimit);
        
        // * startPage : 페이징바의 시작 수
        int startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
        
        // * endPage : 페이징바의 끝 수
        int endPage = startPage + pageLimit - 1;
        if(endPage > maxPage)
        {
            endPage = maxPage;
        }
        
        return new PageInfo(listCount, currentPage, startPage, endPage, maxPage, pageLimit, boardLimit);
    }
}
