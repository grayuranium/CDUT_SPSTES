/**
 * 
 */

document
		.write("<script type='text/javascript' src='../js/jquery-latest.js'></script>");

function confirm(id, exa_cost) {
	var cost_id = "exa_cost" + id;
	var obj = document.getElementById(cost_id);
	var cost = obj.value;
	$.ajax({
		type : "post",
		url : "../update_planned_course",
		data : {
			id : id,
			exa_cost : cost
		},
		cache : false,
		dataType : "json",
		success : function(result) {
			if (result.rs == true)
				alert('设置成功！');

			else
				alert('操作出现问题！');
			window.location.reload();
		}
	});
}