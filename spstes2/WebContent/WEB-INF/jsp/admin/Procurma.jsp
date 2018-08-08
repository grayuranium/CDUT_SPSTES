<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Procurma</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/tubiao/2/iconfont.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/iconfont.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/tubiao/iconfont.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/button.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jquery.my-modal.1.1.winStyle.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/pager.css"/>
    <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script> 
    <script src="${pageContext.request.contextPath}/js/pager.js">  </script>
    <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.my-modal.1.1.js"></script>
    <script src="http://www.jq22.com/jquery/jquery-1.6.2.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.magnific-popup.js" type="text/javascript"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script src="http://www.jq22.com/js/jq.js"></script>
    <style type="text/css">
    body { font-family: "HelveticaNeue","Helvetica-Neue", "Helvetica", "Arial", sans-serif; }
    .big-link { display:block; margin-top: 100px; text-align: center; font-size: 70px; color: #06f; }
    a{
        color: rgb(228, 235, 129);
    }
    a:hover{
            color:brown;
        }
     .biankuang{
        font-family: 20px;
        
        /* 宽度=1的细细的白色边框 */
        /* border: 1px solid #fff; */
        /* 边框的圆角数值为3px(一般为2-4px) */
        /* border-radius: 3px; */
        padding: 10px 50px;
        /* 使链接下面那根横线消失 */
        text-decoration: none; 
        margin:20px 20px 20px 20px;
   
    }
    div{
        margin: 50px 20px 60px 20px;
    }
    center{
        color: bisque;
        font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    }
    /* table{
            align-content: center;
            color: bisque;
            padding: 30px;
        } */
        tr{
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            color: aliceblue;
        }
        </style>
</head>
<body>
    <br><br>
    <p><h1><center>专 业 课 程 管 理</center></h1></p>
    <div><center>
            <!-- <input type="text" class="input-text" style="width:250px" placeholder="输入id、课程名称" id="" name="" border-radius: 3px;> -->
            <select id="majorSelect">
            	 <option value ="allMajor">所有专业</option>
			  	 <c:forEach var="item" items="${majorSelect}" varStatus="status">
			  	 	<option value ="${item.majorID}">${item.major_name}</option>
			  	 </c:forEach>
			</select>
            
            <button class="btn btn-success radius" id="search" name="" border-radius: 3px;><i class="iconfont icon-sousuo"></i> 查询</button>
        </center>
    </div>
    <div id="dg" style="z-index: 9999; position: fixed ! important; right: 200px; top: -130px;">
            <table width=""100% style="position: absolute; width: 260px; right: 200px; top: -180px;">
                <br><br><br><br>
                <div class="page">
                    <section class="demo">
                        <nav class="nav">
                            <ul>
                                <li><a id="modifyBtn" href="#" class="btn1"><span>修改</span></a></li>
                                <li type="button"><a id="deleteBtn" href="#"><span>删除</span></a></li>
                                <li><a id="addBtn" href="#" class="btn1"><span>增加</span></a></li>
                            </ul>
                        </nav>
                    </section>
                </div>
            </table>
        </div>
        <div style="text-align:center;clear:both;margin-top:50px">
                <script src="/gg_bd_ad_720x90-2.js" type="text/javascript"></script>
                <script src="/follow.js" type="text/javascript"></script>
        </div>
   
    <ul><center>
            <table id = "test_table" class="table table-hover table-striped" align='center' cellspacing="0" cellpadding="20" border="1">
                <thead>
                <tr>
                        <th></th>
                        <th>课程编号</th>
                        <th>教材编号</th>
                        <th>课程名称</th>
                        <th>英文名称</th>
                        <th>课程学分</th>
                        <th>课程类型</th>
                        <th>课程考试方式</th>
                        <th>课程供卷方式</th>
                        <th style="display:none"></th>
                        <th style="display:none"></th>        
                </tr>
            </thead>
            <tbody>
                    <c:forEach var="item" items="${formData}" varStatus="status">
						<tr id="tr${item.couritypeID}">
							<th width="25"><input type="checkbox" value="${item.couritypeID}"></th>
							<th><c:out value="${item.couritypeID}" escapeXml="true" default="暂无"/></th>
							<th><c:out value="${item.bookID}" escapeXml="true" default="暂无"/></th>
							<th><c:out value="${item.course_name}" escapeXml="true" default="暂无"/></th>
							<th><c:out value="${item.course_Ename}" escapeXml="true" default="暂无"/></th>
							<th><c:out value="${item.course_credit}" escapeXml="true" default="暂无"/></th>
							<th><c:out value="${item.course_type}" escapeXml="true" default="暂无"/></th>
							<th><c:out value="${item.exa_method}" escapeXml="true" default="暂无"/></th>
							<th><c:out value="${item.offer_method}" escapeXml="true" default="暂无"/></th>
							<th style="display:none"><c:out value="${item.courseID}" escapeXml="true" default="暂无"/></th>
                        	<th style="display:none"><c:out value="${item.majorID}" escapeXml="true" default="暂无"/></th>
						</tr>
       				</c:forEach>
            </tbody>
            </table>
        </center>
    </ul>

    <div>
            <ul class="pagination" id="page1">
            </ul>
            <div class="pageJump">
                <span>跳转到</span>
                <input type="text"/>
                <span>页</span>
                <button type="button" class="button">确定</button>
            </div>
    </div>
    
	<div class="m-modal">
			<div class="m-modal-dialog">
				<div class="m-top">
					<h4 class="m-modal-title">
						专业课程
					</h4>
					<span class="m-modal-close">&times;</span>
                </div>
                <div  class="m-middle">
					<label>请选择专业：</label> 
					<select id="majorSelectForModal">
						  	 <c:forEach var="item" items="${majorSelect}" varStatus="status">
						  	 	<option value ="${item.majorID}">${item.major_name}</option>
						  	 </c:forEach>
					</select>
					<br> <label>请选择课程：</label>
					<select id="courseSelect">
						  	 <c:forEach var="item" items="${courseSelect}" varStatus="status">
						  	 	<option value ="${item.courseID}">${item.course_name}</option>
						  	 </c:forEach>
					</select>
					<br> <label>请选择课程类型：</label> 
						<select id="courseTypeSelect">
						  	 <option value="公共课">公共课</option>
						  	 <option value="基础课">基础课</option>
						  	 <option value="核心课">核心课</option>
						</select>
					<input id="majorIDStore" type="hidden"  value="0">
					<input id="operationType" type="hidden"  value="0"><!-- 0,修改；1，删除；2，增加 -->
					<input id="pageStore" type="hidden"  value="${nowPage}">
				</div>
				<div class="m-bottom">
					<button id="submitData">确定</button>
					<button class="m-btn-cancel">取消</button>
				</div>
			</div>
	</div>
				
	<script>
		$(function() {
			// 模态框相关
			
			var m1 = new MyModal.modal();
			$('.btn1').on("click", function() {
				m1.show();
			});
			
			Page({
				num : "${pageNum}", //页码数
				startnum : "${nowPage}", //指定页码
				elem : $('#page1'), //指定的元素
				callback : function(n) { //回调函数
					parent.$('#myiframe').attr('src',"${pageContext.request.contextPath}/admin/zhuanyekecheng?majorID=" + $("#majorSelect").val() + "&page="+n);
				}
			});
			
			// 修改
			$("#modifyBtn").click(function(){
				
				$("#operationType").val(0); // 修改
				
				var firstRowID = "tr" + $("input[type=checkbox]:checked").eq(0).val();
				var rowSelectorID = "#test_table tr[id='" + firstRowID + "']";
				var row = $(rowSelectorID);
				var len = row.children().length;
				var rowData = new Array();
				
				for(var i = 0; i < len; i++)
					rowData[i] = row.children().eq(i).text();
				$("#majorIDStore").val(rowData[1]); // 将被选中的majorID保存到一个隐藏域
				
				var courseTypeData = rowData[6];
				var courseID = rowData[len-2];
				var majorID =  rowData[len-1];
				
			     $("#majorSelectForModal option").each(function(){  //遍历所有option  
			          var Value= $(this).val();   //获取option值   
			          if(Value == majorID){
			               $(this).attr("selected", true);//使被选中
			          }  
			     });
				
			     $("#courseSelect option").each(function(){  //遍历所有option  
			          var Value= $(this).val();   //获取option值   
			          if(Value == courseID){
			               $(this).attr("selected", true);//使被选中
			          }  
			     });
			     
			     
			     $("#courseTypeSelect option").each(function(){  //遍历所有option  
			          var Value= $(this).val();   //获取option值   
			          if(Value == courseTypeData){
			               $(this).attr("selected", true);//使被选中
			          }  
			     });
			});
			
			// 删除
			$("#deleteBtn").click(function(){
				$("#operationType").val(1); // 删除
				
				if(!confirm("确定要删除吗?"))
					return true;
				var checkedItems = $("input[type=checkbox]:checked");
				var arrayData = new Array();
				for(var i = 0; i < checkedItems.length; i++)
					arrayData[i] = checkedItems.eq(i).val();
				// ajax
				$.ajax({
					type : "post",
					url : "${pageContext.request.contextPath}/admin/zhuanyekecheng1?type=1",
					data : {'jsonData':JSON.stringify(arrayData)},
					async : true,
					success : function(msg) {
						if (msg == "no") {
							alert("操作失败...");
						} else {
							alert("操作成功...");
							parent.$('#myiframe').attr('src',"${pageContext.request.contextPath}/admin/zhuanyekecheng?majorID=" + $("#majorSelect").val() + "&page=${nowPage}");
							// 关闭模态框
							// $("#myModal").trigger('reveal:close');
						}
					}
				});
			});
			
			// 增加
			$("#addBtn").click(function(){
				$("#operationType").val(2); // 增加
			});
			
			// 提交数据
			$("#submitData").click(function(){
				
				// majorSelectForModal courseSelect courseTypeSelect
				var majorID = $("#majorSelectForModal").val();
				var courseID = $("#courseSelect").val();
				var courseType = $("#courseTypeSelect").val();
				
				// ajax
				$.ajax({
					type : "post",
					url : "${pageContext.request.contextPath}/admin/zhuanyekecheng1?type="+$("#operationType").val(),
					data : {"courseTypeId" : $("#majorIDStore").val(),
							"majorId" : majorID,
							"courseId" : courseID,
							"courseType" : courseType},
					async : true,
					success : function(msg) {
						if (msg == "no") {
							alert("操作失败...");
						} else {
							alert("操作成功...");
							parent.$('#myiframe').attr('src',"${pageContext.request.contextPath}/admin/zhuanyekecheng?majorID=" + $("#majorSelect").val() + "&page=${nowPage}");
							// 关闭模态框
							// $("#myModal").trigger('reveal:close');
						}
					}
				});
			});
			
			
			// 点击查询
			$("#search").click(function(){
				parent.$('#myiframe').attr('src',"${pageContext.request.contextPath}/admin/zhuanyekecheng?majorID=" + $("#majorSelect").val());
			});
			
		});
	</script>
	
	<c:if test="${majorIDForMajorSelect != null}">
			<script type="text/javascript">
				$(function(){
					$("#majorSelect").val("${majorIDForMajorSelect}");
				});
			</script>
	</c:if>

</body>
</html>