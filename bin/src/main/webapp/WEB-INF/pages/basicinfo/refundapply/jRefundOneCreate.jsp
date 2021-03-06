<%@ page language="java" pageEncoding="UTF-8" %>
<%@ include file="../../base.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>
<body>

<form method="post">
    <input type="hidden" id="tradeId" name="tradeId" value="${obj.id}">
    <input type="hidden" id="tradeDetailId" name="tradeDetailId"
           value="${td.id}"> <input type="hidden" id="refundUserId"
                                    name="refundUserId" value="${obj.payUserId}"> <input
        type="hidden" readonly="readonly" name="refundUserName"
        value="${obj.payUserName}"/><input type="hidden"
                                           id="refundUserOpenid" name="refundUserOpenid"
                                           value="${obj.payUserOpenid}"> <input type="hidden"
                                                                                readonly="readonly" name="money"
                                                                                value="${co.coursePrice}"/>
    <div id="menubar">
        <div id="middleMenubar">
            <div id="innerMenubar">
                <div id="navMenubar">
                    <ul>
                        <li id="save"><a href="#"
                                         onclick="formSubmit('insertapplyone.action','_self');">确定</a>
                        </li>
                        <li id="back"><a href="list.action">返回</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="textbox" id="centerTextbox">

        <div class="textbox-header">
            <div class="textbox-inner-header">
                <div class="textbox-title">订单详情</div>
            </div>
        </div>
        <div>
            <div>

                <table class="commonTable" cellspacing="1">
                    <tr>
                        <td class="columnTitle">交易类型：</td>
                        <td class="tableContent"><c:if test="${obj.category==0}">课程</c:if>
                            <c:if test="${obj.category==1}">
                                充值
                            </c:if> <c:if test="${obj.category==2}">商品
                            </c:if></td>
                    </tr>
                    <tr>
                        <td class="columnTitle">支付人姓名：</td>
                        <td class="tableContent">${obj.payUserName}</td>
                        <td class="columnTitle">支付时间：</td>
                        <td class="tableContentAuto"><fmt:formatDate
                                value="${obj.payTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="columnTitle">总金额：</td>
                        <td class="tableContent">${obj.totalFee}</td>
                        <td class="columnTitle">支付金额：</td>
                        <td class="tableContent">${obj.cashFee}</td>
                    </tr>
                </table>
            </div>
        </div>

        <div class="textbox" id="centerTextbox">

            <div class="textbox-header">
                <div class="textbox-inner-header">
                    <div class="textbox-title">课程信息</div>
                </div>
            </div>
            <div>
                <div>
                    <table class="commonTable" cellspacing="1">
                        <tr>
                            <td class="columnTitle">课程名称：</td>
                            <td class="tableContent">${co.courseName}</td>
                            <td class="columnTitle">课程摘要：</td>
                            <td class="tableContent">${co.courseAbstract}</td>
                        </tr>
                        <tr>
                            <td class="columnTitle">价格：</td>
                            <td class="tableContent">${co.coursePrice}</td>
                            <td class="columnTitle">最低开班人数：</td>
                            <td class="tableContent">${co.openNumber}</td>
                        </tr>
                        <tr>
                            <td class="columnTitle">类别：</td>
                            <td class="tableContent">${co.categoryName}</td>
                            <td class="columnTitle">等级：</td>
                            <td class="tableContent">${co.rankName}</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <div class="textbox" id="centerTextbox">
            <div class="textbox-header">
                <div class="textbox-inner-header">
                    <div class="textbox-title">退款人员列表</div>
                </div>
            </div>

            <div>

                <div class="eXtremeTable">
                    <table id="ec_table" class="tableRegion" width="98%">
                        <thead>
                        <tr>
                            <td class="tableHeader">序号</td>
                            <td class="tableHeader">参加人员</td>
                            <td class="tableHeader">参加课程</td>
                            <td class="tableHeader">参加区域</td>
                        </tr>
                        </thead>
                        <tbody class="tableBody">
                        <tr class="odd" onmouseover="this.className='highlight'"
                            onmouseout="this.className='odd'">
                            <td>1</td>
                            <td>${td.userName}</td>
                            <td>${td.courseName}</td>
                            <td>${td.areaName}</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>

        </div>
        <table>
            <tr>
                <td class="columnTitle_mustbe">退款金额：</td>
                <td class="tableContent"><font color="red">${co.coursePrice}</font>
                </td>
            </tr>
            <tr>
                <td class="columnTitle_mustbe">退款缘由：</td>
                <td class="tableContent"><textarea maxlength="300"
                                                   name="refundReason" style="height:120px;"></textarea>
                </td>
            </tr>
        </table>
</form>
</body>
</html>

