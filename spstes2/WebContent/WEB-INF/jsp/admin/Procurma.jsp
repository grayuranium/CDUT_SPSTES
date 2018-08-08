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
        
        /* ���=1��ϸϸ�İ�ɫ�߿� */
        /* border: 1px solid #fff; */
        /* �߿��Բ����ֵΪ3px(һ��Ϊ2-4px) */
        /* border-radius: 3px; */
        padding: 10px 50px;
        /* ʹ���������Ǹ�������ʧ */
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
    <p><h1><center>ר ҵ �� �� �� ��</center></h1></p>
    <div><center>
            <!-- <input type="text" class="input-text" style="width:250px" placeholder="����id���γ�����" id="" name="" border-radius: 3px;> -->
            <select id="majorSelect">
            	 <option value ="allMajor">����רҵ</option>
			  	 <c:forEach var="item" items="${majorSelect}" varStatus="status">
			  	 	<option value ="${item.majorID}">${item.major_name}</option>
			  	 </c:forEach>
			</select>
            
            <button class="btn btn-success radius" id="search" name="" border-radius: 3px;><i class="iconfont icon-sousuo"></i> ��ѯ</button>
        </center>
    </div>
    <div id="dg" style="z-index: 9999; position: fixed ! important; right: 200px; top: -130px;">
            <table width=""100% style="position: absolute; width: 260px; right: 200px; top: -180px;">
                <br><br><br><br>
                <div class="page">
                    <section class="demo">
                        <nav class="nav">
                            <ul>
                                <li><a id="modifyBtn" href="#" class="btn1"><span>�޸�</span></a></li>
                                <li type="button"><a id="deleteBtn" href="#"><span>ɾ��</span></a></li>
                                <li><a id="addBtn" href="#" class="btn1"><span>����</span></a></li>
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
                        <th>�γ̱��</th>
                        <th>�̲ı��</th>
                        <th>�γ�����</th>
                        <th>Ӣ������</th>
                        <th>�γ�ѧ��</th>
                        <th>�γ�����</th>
                        <th>�γ̿��Է�ʽ</th>
                        <th>�γ̹���ʽ</th>
                        <th style="display:none"></th>
                        <th style="display:none"></th>        
                </tr>
            </thead>
            <tbody>
                    <c:forEach var="item" items="${formData}" varStatus="status">
						<tr id="tr${item.couritypeID}">
							<th width="25"><input type="checkbox" value="${item.couritypeID}"></th>
							<th><c:out value="${item.couritypeID}" escapeXml="true" default="����"/></th>
							<th><c:out value="${item.bookID}" escapeXml="true" default="����"/></th>
							<th><c:out value="${item.course_name}" escapeXml="true" default="����"/></th>
							<th><c:out value="${item.course_Ename}" escapeXml="true" default="����"/></th>
							<th><c:out value="${item.course_credit}" escapeXml="true" default="����"/></th>
							<th><c:out value="${item.course_type}" escapeXml="true" default="����"/></th>
							<th><c:out value="${item.exa_method}" escapeXml="true" default="����"/></th>
							<th><c:out value="${item.offer_method}" escapeXml="true" default="����"/></th>
							<th style="display:none"><c:out value="${item.courseID}" escapeXml="true" default="����"/></th>
                        	<th style="display:none"><c:out value="${item.majorID}" escapeXml="true" default="����"/></th>
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
                <span>��ת��</span>
                <input type="text"/>
                <span>ҳ</span>
                <button type="button" class="button">ȷ��</button>
            </div>
    </div>
    
	<div class="m-modal">
			<div class="m-modal-dialog">
				<div class="m-top">
					<h4 class="m-modal-title">
						רҵ�γ�
					</h4>
					<span class="m-modal-close">&times;</span>
                </div>
                <div  class="m-middle">
					<label>��ѡ��רҵ��</label> 
					<select id="majorSelectForModal">
						  	 <c:forEach var="item" items="${majorSelect}" varStatus="status">
						  	 	<option value ="${item.majorID}">${item.major_name}</option>
						  	 </c:forEach>
					</select>
					<br> <label>��ѡ��γ̣�</label>
					<select id="courseSelect">
						  	 <c:forEach var="item" items="${courseSelect}" varStatus="status">
						  	 	<option value ="${item.courseID}">${item.course_name}</option>
						  	 </c:forEach>
					</select>
					<br> <label>��ѡ��γ����ͣ�</label> 
						<select id="courseTypeSelect">
						  	 <option value="������">������</option>
						  	 <option value="������">������</option>
						  	 <option value="���Ŀ�">���Ŀ�</option>
						</select>
					<input id="majorIDStore" type="hidden"  value="0">
					<input id="operationType" type="hidden"  value="0"><!-- 0,�޸ģ�1��ɾ����2������ -->
					<input id="pageStore" type="hidden"  value="${nowPage}">
				</div>
				<div class="m-bottom">
					<button id="submitData">ȷ��</button>
					<button class="m-btn-cancel">ȡ��</button>
				</div>
			</div>
	</div>
				
	<script>
		$(function() {
			// ģ̬�����
			
			var m1 = new MyModal.modal();
			$('.btn1').on("click", function() {
				m1.show();
			});
			
			Page({
				num : "${pageNum}", //ҳ����
				startnum : "${nowPage}", //ָ��ҳ��
				elem : $('#page1'), //ָ����Ԫ��
				callback : function(n) { //�ص�����
					parent.$('#myiframe').attr('src',"${pageContext.request.contextPath}/admin/zhuanyekecheng?majorID=" + $("#majorSelect").val() + "&page="+n);
				}
			});
			
			// �޸�
			$("#modifyBtn").click(function(){
				
				$("#operationType").val(0); // �޸�
				
				var firstRowID = "tr" + $("input[type=checkbox]:checked").eq(0).val();
				var rowSelectorID = "#test_table tr[id='" + firstRowID + "']";
				var row = $(rowSelectorID);
				var len = row.children().length;
				var rowData = new Array();
				
				for(var i = 0; i < len; i++)
					rowData[i] = row.children().eq(i).text();
				$("#majorIDStore").val(rowData[1]); // ����ѡ�е�majorID���浽һ��������
				
				var courseTypeData = rowData[6];
				var courseID = rowData[len-2];
				var majorID =  rowData[len-1];
				
			     $("#majorSelectForModal option").each(function(){  //��������option  
			          var Value= $(this).val();   //��ȡoptionֵ   
			          if(Value == majorID){
			               $(this).attr("selected", true);//ʹ��ѡ��
			          }  
			     });
				
			     $("#courseSelect option").each(function(){  //��������option  
			          var Value= $(this).val();   //��ȡoptionֵ   
			          if(Value == courseID){
			               $(this).attr("selected", true);//ʹ��ѡ��
			          }  
			     });
			     
			     
			     $("#courseTypeSelect option").each(function(){  //��������option  
			          var Value= $(this).val();   //��ȡoptionֵ   
			          if(Value == courseTypeData){
			               $(this).attr("selected", true);//ʹ��ѡ��
			          }  
			     });
			});
			
			// ɾ��
			$("#deleteBtn").click(function(){
				$("#operationType").val(1); // ɾ��
				
				if(!confirm("ȷ��Ҫɾ����?"))
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
							alert("����ʧ��...");
						} else {
							alert("�����ɹ�...");
							parent.$('#myiframe').attr('src',"${pageContext.request.contextPath}/admin/zhuanyekecheng?majorID=" + $("#majorSelect").val() + "&page=${nowPage}");
							// �ر�ģ̬��
							// $("#myModal").trigger('reveal:close');
						}
					}
				});
			});
			
			// ����
			$("#addBtn").click(function(){
				$("#operationType").val(2); // ����
			});
			
			// �ύ����
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
							alert("����ʧ��...");
						} else {
							alert("�����ɹ�...");
							parent.$('#myiframe').attr('src',"${pageContext.request.contextPath}/admin/zhuanyekecheng?majorID=" + $("#majorSelect").val() + "&page=${nowPage}");
							// �ر�ģ̬��
							// $("#myModal").trigger('reveal:close');
						}
					}
				});
			});
			
			
			// �����ѯ
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