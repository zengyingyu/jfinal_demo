<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<div class="row" style="margin-left:3px;">
	<table class="table table-striped table-bordered table-hover" id="emptb">
	<thead>
		<tr>
			<th>类别</th>
			<th>数量</th>
		</tr>
	</thead>
	<tbody>
	
	</tbody>
	</table>
</div>
<script type="text/javascript" src="<%=request.getContextPath()%>/assets/global/plugins/select2/select2.min.js"></script>

<script type="text/javascript" src="<%=request.getContextPath()%>/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"></script>
<!-- END PAGE LEVEL PLUGINS -->

<script>
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
	        "infoEmpty": "木有记录",  
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
	    "lengthChange": false,
	    "serverSide": true,
	    "ajax": "<%=request.getContextPath()%>/page/emp/emp.json",
	    "paging": false,
	    "info": false
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
});
</script>