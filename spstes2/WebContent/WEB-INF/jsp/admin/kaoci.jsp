<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>kaoci</title>
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
    <p><h1><center>考 次 计 划 管 理</center></h1></p>
    <br>
    <div id="dg" style="z-index: 9999; position: fixed ! important; right: 100px; top: -150px;">
            <table width=""100% style="position: absolute; width: 260px; right: 100px; top: -180px;">
                <br><br><br><br>
                <div class="page">
                    <section class="demo">
                        <nav class="nav">
                            <ul>
                                <li><a id="modifyBtn" href="#" class="btn1"><span>修改</span></a></li>	
                                <li></li>
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
	<ul>
		<center>
			<table id="dataTable" class="table table-hover table-striped" align='center'
				cellspacing="0" cellpadding="20" border="1">
				<thead>
					<tr>
						<th></th>
						<th>考次编号</th>
						<th>考次考试时间</th>
						<th>考次结束时间</th>
						<th>冻结</th>
						<th>报名开始时间</th>
						<th>报名结束时间</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${testTimes}" varStatus="status">
						<tr id="tr${status.count}">
							<th width="25"><input type="checkbox" value="${status.count}"></th>
							<th><c:out value="${item.exa_num}" escapeXml="true" default="暂无"/></th>
							<th><c:out value="${item.estart_time}" escapeXml="true" default="暂无"/></th>
							<th><c:out value="${item.estop_time}" escapeXml="true" default="暂无"/></th>
							<th><c:out value="${item.freeze}" escapeXml="true" default="暂无"/></th>
							<th><c:out value="${item.bstart_time}" escapeXml="true" default="暂无"/></th>
							<th><c:out value="${item.bend_time}" escapeXml="true" default="暂无"/></th>
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
						考次计划
					</h4>
					<span class="m-modal-close">&times;</span>
                </div>
                <div  class="m-middle">
                	
						<label>考次编号：</label> <input type="text" class="input-text"
							style="width: 250px" placeholder="" id="modalSon0" name="" border-radius: 3px;>
						<br> <label>考次考试时间：</label> <input type="text" class="input-text"
							style="width: 250px" placeholder="" id="modalSon1" name="" border-radius: 3px;>
						<br> <label>考次结束时间：</label> <input type="text" class="input-text"
							style="width: 250px" placeholder="" id="modalSon2" name="" border-radius: 3px;>
						<br> <label>冻结：</label> <input type="text" class="input-text"
							style="width: 250px" placeholder="" id="modalSon3" name="" border-radius: 3px;>
						<br> <label>报名开始时间：</label> <input type="text" class="input-text"
							style="width: 250px" placeholder="" id="modalSon4" name="" border-radius: 3px;>
						<br> <label>报名结束时间：</label> <input type="text" class="input-text"
							style="width: 250px" placeholder="" id="modalSon5" name="" border-radius: 3px;>
					
					<input id="operationType" type="hidden"  value="1"> <%-- 1代表修改，2代表添加 --%>
					<input id="pageStore" type="hidden"  value="${nowPage}">
				</div>
				<div class="m-bottom">
					<button id="confirm">确定</button>
					<button class="m-btn-cancel">取消</button>
				</div>
			</div>
	</div>
	<script>
		$(function(){
			
			$('#modalSon0').attr("readonly","readonly");//设为只读
			
			// 模态框相关
			var m1 = new MyModal.modal();
			$('.btn1').on("click", function() {
				m1.show();
			});
			
			
			// 分页相关
			Page({
				num : "${pageNum}", //页码数
				startnum : "${nowPage}", //指定页码
				elem : $('#page1'), //指定的元素
				callback : function(n) { //回调函数
					parent.$('#myiframe').attr('src',"${pageContext.request.contextPath}/admin/kaocijihua0?page="+n);
				}
			});
			
			// 修改按钮点击
			$("#modifyBtn").click(function(){
				var firstRowID = "tr" + $("input[type=checkbox]:checked").eq(0).val();
				var rowSelectorID = "#dataTable tr[id='" + firstRowID + "']";
				var row = $(rowSelectorID);
				var len = row.children().length;
				var rowData = new Array();
				for(var i = 1; i < len; i++){
					rowData[i] = row.children().eq(i).text();
					$("#modalSon"+(i-1)).val(rowData[i]);
				}
			});
			// 增加按钮点击
			$("#addBtn").click(function(){
				$('#modalSon0').val("自动生成");//设为只读
				$("#operationType").val(2);// 2表示添加数据
			});
			
			// 确定按钮
			$("#confirm").click(function(){
				var arrayData = new Array();
				var len = 6;
				for(var i = 0; i < len; i++)
					arrayData[i] = $("#modalSon"+(i)).val();
				// ajax
				$.ajax({
					type : "post",
					url : "${pageContext.request.contextPath}/admin/kaocijihua1?type="+$("#operationType").val(),
					data : {"examNum" : arrayData[0],
							"teststarttime" : arrayData[1],
							"testendtime" : arrayData[2],
							"freeze" : arrayData[3],
							"enrollstarttime" : arrayData[4],
							"enrollendtime" : arrayData[5]},
					async : true,
					success : function(msg) {
						if (msg == "no") {
							alert("操作失败...");
						} else {
							alert("操作成功...");
							parent.$('#myiframe').attr('src',"${pageContext.request.contextPath}/admin/kaocijihua0?page="+$("#pageStore").val());
							// 关闭模态框
							// $("#myModal").trigger('reveal:close');
						}
					}
				});
			});
		});
	</script>
</body>
</html>