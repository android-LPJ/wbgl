<%--
  Created by IntelliJ IDEA.
  User: LiPeijing
  Date: 2017/9/8
  Time: 22:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <style type="text/css">
        .table1{
            border:1px solid #ddd;
            width:900px;

        }
        thead{
            background-color:lightblue;
        }

    </style>
</head>
<body>
<table border="0" width="900px">
    <tr>
        <td align="center" style="font-size:24px; color:#999">微博管理</td>
    </tr>
</table>

<br/>
<s:iterator value="list" var="d">
<table cellspacing="0" border="1" class="table1">
    <thead>
    <tr>
        <th width="450">微博编号</th>
        <th  width="450">用户编号</th>
        <th  width="450">时间</th>
        <th  width="450">状态</th>
    </tr>
    </thead>
    <tbody>

    <tr class="tabled2">
        <td align="center"><s:property value="#d.mid" /></td>
        <td align="center"><s:property value="#d.uid" /></td>
        <td align="center"><s:property value="#d.mtime" /></td>
        <td align="center"><s:property value="#d.mstate" /></td>
    </tr>
    <tr>
        <td align="center" colspan="3" ><s:property value="#d.mcontent" /></td>
        <td align="center"><a href="${ pageContext.request.contextPath }/microblog_delete.action?mid=<s:property value="#d.mid"/> "><img src="/adminPage/images/delete.png"></a> </td>
    </tr>
    </tbody>
</table>
<br/><br/>
</s:iterator>
<table border="0" cellspacing="0" cellpadding="0"  width="900px">
    <tr>
        <td align="right">
            <span>第<s:property value="currPage" />/<s:property value="totalPage" /> 页</span>
            <span>总记录数<s:property value="totalCount"/> &nbsp;每页显示<s:property value="pageSize" /> </span>
            <span>
                <s:if test="currPage != 1">
                    <a href="${ pageContext.request.contextPath }/microblog_findAll.action?currPage=1">[首页]</a>&nbsp;&nbsp;
                    <a href="${ pageContext.request.contextPath }/microblog_findAll.action?currPage=<s:property value="currPage-1" />">[上一页]</a>&nbsp;&nbsp;
                </s:if>
                <s:if test="currPage != totalPage">
                    <a href="${ pageContext.request.contextPath }/microblog_findAll.action?currPage=<s:property value="currPage+1" />">[下一页]</a>&nbsp;&nbsp;
                    <a href="${ pageContext.request.contextPath }/microblog_findAll.action?currPage=<s:property value="totalPage" />[尾页]</a>&nbsp;&nbsp;
                </s:if>
            </span>
        </td>
    </tr>
</table>
</body>
</html>