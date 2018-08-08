/**
 * 
 */
document
		.write("<script type='text/javascript' src='../js/jquery-latest.js'></script>");

function confirm_(id, type) {
	// 约定0为启用,1为停用
	$.ajax({
		type : "post",
		url : "../update_course",
		data : {
			id : id,
			type : type
		},
		cache : false,
		dataType : "json",
		success : function(result) {
			/*if (result.rs == true)
				alert('操作成功！');

			else
				alert('操作出现问题！');*/
			window.location.reload();
		}
	});
}

function confirm_credit(id, type) {
	// 约定0为启用,1为停用
	var credit_id = "credit_id" + id;
	var obj = document.getElementById(credit_id);
	var credit = obj.value;
	$.ajax({
		type : "post",
		url : "../update_course",
		data : {
			id : id,
			type : type,
			course_credit : credit
		},
		cache : false,
		dataType : "json",
		success : function(result) {
			if (result.rs == true)
				alert('操作成功！');

			else
				alert('操作出现问题！');
			window.location.reload();
		}
	});
}