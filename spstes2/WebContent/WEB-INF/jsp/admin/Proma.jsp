<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Proma</title>
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
    <p><h1><center>专 业 管 理</center></h1></p>
    <div id="dg" style="z-index: 9999; position: fixed ! important; right: 250px; top: -100px;">
            <table width=""100% style="position: absolute; width: 260px; right: 250px; top: -170px;">
                <br><br><br><br>
                <div class="page">
                    <section class="demo">
                        <nav class="nav">
                            <ul>
                                <li></li>
                                <li></li>
                                <li><a href="#" class="btn1"><span>增加</span></a></li>
                                <li><a id="notFreezeBtn" href="#"><span>启用</span></a></li>
                                <li><a id="freezeBtn" href="#"><span>禁用</span></a></li>
                                
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
    <div><center>
            <a id="showCapCourse"  class="biankuang" href='#' class='button pill' style='font-size:13px;'><i class="iconfont icon-kecheng-" ></i>查看全国课程 </a>
            <a id="showPriCourse"  class="biankuang" href='#' class='button pill' style='font-size:13px;'><i class="iconfont icon-kecheng-" ></i>查看四川自定义课程 </a>
            <a  class="biankuang" href='#' class='button pill' style='font-size:13px;'><i class="iconfont icon-kecheng-" ></i>查看开考专业 </a>
            <!--  <a  class="biankuang" class="big-link" data-reveal-id="myModal" class='button pill' style='font-size:13px;'><i class="iconfont icon-tianjia" ></i>新增课程 </a>
            <a class="biankuang" href="PEAPage.jsp"><i class="iconfont icon-shouye" ></i>返回首页</a> -->
         </center>
    </div>   
    <ul><center>
            <table   class="table table-hover table-striped" align='center' cellspacing="0" cellpadding="20" border="1">
                <thead>
                <tr>
                    <th></th>
                    <th>专业代码</th>
                    <th>自定义专业代码</th>
                    <th>专业名称</th>
                    <th>专业毕业学分</th>
                    <th>专业审批</th>
                    <th>专业层次</th>
                    <th>专业类型</th>
                    <th>开考方式</th>
                    <th>统考</th>
                    <th>主考院校</th>
                    <th>专业门类</th>
                    <th>全国课程</th>
                    <th>启用</th>            
                </tr>
            </thead>
            <tbody>
                    <c:forEach var="item" items="${majors}" varStatus="status">
						<tr id="tr${status.count}">
							<th width="25"><input type="checkbox" value="${item.majorID}"></th>
							<th><c:out value="${item.majorID}" escapeXml="true" default="暂无"/></th>
                            <th><c:out value="${item.customID}" escapeXml="true" default="暂无"/></th>
                            <th><c:out value="${item.major_name}" escapeXml="true" default="暂无"/></th>
                            <th><c:out value="${item.major_credit}" escapeXml="true" default="暂无"/></th>
                            <th><c:out value="${item.examine}" escapeXml="true" default="暂无"/></th>
                            <th><c:out value="${item.prof_level}" escapeXml="true" default="暂无"/></th>
                            <th><c:out value="${item.prof_type}" escapeXml="true" default="暂无"/></th>
                            <th><c:out value="${item.exa_type}" escapeXml="true" default="暂无"/></th>
                            <th><c:out value="${item.uniform_exa}" escapeXml="true" default="暂无"/></th>
                            <th><c:out value="${item.school}" escapeXml="true" default="暂无"/></th>
                            <th><c:out value="${item.pro_class}" escapeXml="true" default="暂无"/></th>
                            <th><c:out value="${item.cap_major}" escapeXml="true" default="暂无"/></th>
                            <th><c:out value="${item.used}" escapeXml="true" default="暂无"/></th>
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
						专业管理
					</h4>
					<span class="m-modal-close">&times;</span>
                </div>
                <div  class="m-middle">
					<label>id：</label> <input type="Text" class="input-text"
						style="width: 250px" placeholder="" id="" name=""border-radius: 3px;>
					<br> <label>自定义专业代码：</label> <input type="Text"
						class="input-text" style="width: 250px" placeholder="" id="" name=""border-radius: 3px;>
					<br> <label>专业名称：</label> <input type="Text" class="input-text"
						style="width: 250px" placeholder="" id="" name=""border-radius: 3px;>
					<br> <label>专业毕业学分：</label> <input type="Text" class="input-text"
						style="width: 250px" placeholder="" id="" name=""border-radius: 3px;>
					<br> <label>专业审批：</label> <input type="Text" class="input-text"
						style="width: 250px" placeholder="" id="" name=""border-radius: 3px;>
					<br> <label>专业层次：</label> <input type="Text" class="input-text"
						style="width: 250px" placeholder="" id="" name=""border-radius: 3px;>
					<br> <label>专业类型：</label> <input type="Text" class="input-text"
						style="width: 250px" placeholder="" id="" name=""border-radius: 3px;>
					<br> <label>开考方式：</label> <input type="Text" class="input-text"
						style="width: 250px" placeholder="" id="" name=""border-radius: 3px;>
					<br> <label>统考：</label> <input type="Text" class="input-text"
						style="width: 250px" placeholder="" id="" name=""border-radius: 3px;>
					<br> <label>主考院校：</label> <input type="Text" class="input-text"
						style="width: 250px" placeholder="" id="" name=""border-radius: 3px;>
					<br> <label>专业门类：</label> <input type="Text" class="input-text"
						style="width: 250px" placeholder="" id="" name=""border-radius: 3px;>
					<br> <label>全国课程：</label> <input type="Text" class="input-text"
						style="width: 250px" placeholder="" id="" name=""border-radius: 3px;>
					<br> <label>启用：</label> <input type="Text" class="input-text"
						style="width: 250px" placeholder="" id="" name=""border-radius: 3px;>
				</div>
				
				<div class="m-bottom">
					<button class="m-btn-sure">确定</button>
					<button class="m-btn-cancel">取消</button>
				</div>
				<input id="pageStore" type="hidden"  value="${nowPage}">
				<input id="showType" type="hidden"  value="${type}">
			</div>
	</div>
	<script>
		$(function(){
			// 分页相关
			Page({
				num : "${pageNum}", //页码数
				startnum : "${nowPage}", //指定页码
				elem : $('#page1'), //指定的元素
				callback : function(n) { //回调函数
					parent.$('#myiframe').attr('src',"${pageContext.request.contextPath}/admin/zhuanyeguanli?type="+$("#showType").val()+"&page="+n);
				}
			});
			
			// 模态框相关
			var m1 = new MyModal.modal();
			$('.btn1').on("click", function() {
				m1.show();
			});
			
			// 启用
			$("#notFreezeBtn").click(function(){
				var checkedItems = $("input[type=checkbox]:checked");
				var arrayData = new Array();
				for(var i = 0; i < checkedItems.length; i++)
					arrayData[i] = checkedItems.eq(i).val();
				// ajax
				$.ajax({
					type : "post",
					url : "${pageContext.request.contextPath}/admin/zhuanyeguanli1?type=5&used=1",
					data : {'jsonData':JSON.stringify(arrayData)},
					async : true,
					success : function(msg) {
						if (msg == "no") {
							alert("操作失败...");
						} else {
							alert("操作成功...");
							parent.$('#myiframe').attr('src',"${pageContext.request.contextPath}/admin/zhuanyeguanli?type="+$("#showType").val()+"&page="+$("#pageStore").val());
							// 关闭模态框
							// $("#myModal").trigger('reveal:close');
						}
					}
				});
			});
			
			// 停用
			$("#freezeBtn").click(function(){
				var checkedItems = $("input[type=checkbox]:checked");
				var arrayData = new Array();
				for(var i = 0; i < checkedItems.length; i++)
					arrayData[i] = checkedItems.eq(i).val();
				// ajax
				$.ajax({
					type : "post",
					url : "${pageContext.request.contextPath}/admin/zhuanyeguanli1?type=5&used=0",
					data : {'jsonData':JSON.stringify(arrayData)},
					async : true,
					success : function(msg) {
						if (msg == "no") {
							alert("操作失败...");
						} else {
							alert("操作成功...");
							parent.$('#myiframe').attr('src',"${pageContext.request.contextPath}/admin/zhuanyeguanli?type="+$("#showType").val()+"&page="+$("#pageStore").val());
							// 关闭模态框
							// $("#myModal").trigger('reveal:close');
						}
					}
				});
			});
			
			$("#showCapCourse").click(function(){
				$("#showType").val(1);
				parent.$('#myiframe').attr('src',"${pageContext.request.contextPath}/admin/zhuanyeguanli?type="+$("#showType").val());
			});
			$("#showPriCourse").click(function(){
				$("#showType").val(2);
				parent.$('#myiframe').attr('src',"${pageContext.request.contextPath}/admin/zhuanyeguanli?type="+$("#showType").val());
			});
			// 增加
			$("#addBtn").click(function(){
				$("#myModal").trigger('reveal:close');
			});
			
		});
	</script>
</body>
</html>