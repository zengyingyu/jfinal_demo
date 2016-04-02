<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%-- <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/global/plugins/datatables/media/css/dataTables.bootstrap.min.css"> --%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css">
<div class="row">
	<div class="form">
		<form class="form-horizontal" role="form">
			<div class="row margin-bottom-10" style="margin-left:30px;">
				<button type="button" class="btn btn-sm blue" id="querybt">查询</button>
				<button type="button" class="btn btn-sm blue">删除</button>
			</div>
			<fieldset class="col-md-6" style="border:1px solid silver;border-radius:5px;padding:10px;margin-left:15px;">
				<label for="account">员工姓名:&nbsp;</label>
				<input type="text" class="input-sm margin-right-10" name="name" id="name">
				<label for="account">电话:&nbsp;</label>
				<input type="text" class="input-sm" name="phone" id="phone">
			</fieldset>
		</form>
	</div>
</div>
<table class="table table-striped table-bordered table-hover" id="emptb">
	<thead>
		<tr>
			<th class="table-checkbox">
				<input type="checkbox" class="group-checkable" data-set="#emptb .checkboxes"/>全选
			</th>
			<th>员工工号</th>
			<th>员工姓名</th>
			<th>年龄</th>
			<th>电话</th>
			<th>部门</th>
			<th>性别</th>
			<th>级别</th>
			<th>备注</th>
		</tr>
	</thead>
	<tbody>
	
	</tbody>
	</table>
<script type="text/javascript" src="<%=request.getContextPath()%>/assets/global/plugins/select2/select2.min.js"></script>
<%-- <script type="text/javascript" src="<%=request.getContextPath()%>/assets/global/plugins/datatables/media/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/assets/global/plugins/datatables/media/js/dataTables.bootstrap.min.js"></script> --%>
<script type="text/javascript" src="<%=request.getContextPath()%>/assets/global/plugins/datatables/media/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"></script>
<!-- END PAGE LEVEL PLUGINS -->

<script type="text/javascript">
jQuery(document).ready(function() {
	var table = $('#emptb');
	table.dataTable({
	    "language": {
	        "aria": {
	            "sortAscending": ": activate to sort column ascending",
	            "sortDescending": ": activate to sort column descending"
	        },
	        "lengthMenu": "每页显示 _MENU_条",  
	        "zeroRecords": "没有找到符合条件的数据",  
	        "processing": "<img src=’./loading.gif’ />",  
	        "info": "当前第 _START_ - _END_ 条　共计 _TOTAL_ 条",  
	        "infoEmpty": "没有记录",  
	        "infoFiltered": "(从 _MAX_ 条记录中过滤)",  
	        "search": "搜索：",  
	        "paginate": {  
	            "sFirst": "首页",  
	            "sPrevious": "前一页",  
	            "sNext": "后一页",  
	            "sLast": "尾页"  
	        },
	        
	    },
	    "bStateSave": false, // save datatable state(pagination, sort, etc) in cookie.
	    "searching": false,
	    "search": {},
	    "lengthChange": false,
	    "serverSide": true,
	    "ajax": {
	        "url":  '<%=request.getContextPath()%>/staff/query',
	        "type": "POST",
	        "data": function ( d ) {
				return {
					"start": d.start?d.start:0,
					"length": d.length?d.length:1,
		            "name": $('#name').val(),
		            "phone":$("#phone").val()
				};
			}
		},
	    "pageLength": 1,
	    "pagingType": "bootstrap_full_number",
	    "ordering": false,
	    "columns":[
               {"data":"staffId", render: function ( data, type, full, meta ) {
            	      return '<input type="checkbox" name="id" class="checkboxes" value="'+data+'">';
               }},
               {"data":"staffId", render: function(data, type, full, meta ) {
         	      return '<a class=" btn default" href="add.jsp?staffId="'+data+' data-target="#ajax" data-toggle="modal">'+data+' </a>';
               }},
               {"data":"staffName"},
               {"data":"staffAge"},
               {"data":"staffPhone"},
               {"data":"staffDepartment"},
               {"data":"staffSex", render: function ( data, type, full, meta ) {
            		switch(data){
            		case 1: return "男";
            		case 2: return "女";
            		default: return "";
            		}
               }},
               {"data":"staffGrade", render: function ( data, type, full, meta ) {
            	   	switch(data){
	           		case 1: return "员工";
	           		case 2: return "领导";
	           		default: return "";
	           		}
               }},
               {"data":"staffNote"}
           ]
	});
	
	var tableWrapper = jQuery('#emptb_wrapper');
	
	table.find('.group-checkable').change(function () {
	    var set = jQuery(this).attr("data-set");
	    var checked = jQuery(this).is(":checked");
	    jQuery(set).each(function () {
	        if (checked) {
	            $(this).attr("checked", true);
	            $(this).parents('tr').addClass("active");
	        } else {
	            $(this).attr("checked", false);
	            $(this).parents('tr').removeClass("active");
	        }
	    });
	    jQuery.uniform.update(set);
	});
	
	table.on('change', 'tbody tr .checkboxes', function () {
	    $(this).parents('tr').toggleClass("active");
	});
	
	tableWrapper.find('.dataTables_length select').addClass("form-control input-xsmall input-inline"); // modify table per page dropdown
	
	$("#querybt").click(function(){
		table.dataTable().api().ajax.reload(null, true);
	});
});
</script>