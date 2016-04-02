<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<div class="portlet-body form col-md-6">
	<form class="form-horizontal"  id="staffForm" role="form">
		<div class="form-actions">
			<div class="row">
				<div class="col-md-offset-3 col-md-10">
					<button type="submit" class="btn blue" id="savebt">保存</button>
				</div>
			</div>
		</div>
		<div class="form-body">
			<div class="form-group">
				<label for="account" class="col-md-3 control-label">员工工号:
					<span class="required" aria-required="true">*</span>
				</label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="staff.staffId" autocomplete="off">
				</div>
			</div>
			<div class="form-group">
				<label for=" password " class="col-md-3 control-label">app密码:
					<span class="required" aria-required="true">*</span>
				</label>
				<div class="col-md-9">
					<input type="password" class="form-control" name="staff.staffPwd" autocomplete="off">
				</div>
			</div>
			<div class="form-group">
				<label for="account" class="col-md-3 control-label">员工姓名:&nbsp;</label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="staff.staffName">
				</div>
			</div>
			<div class="form-group">
				<label for="account" class="col-md-3 control-label">性别:&nbsp;</label>
				<div class="col-md-9">
					<select class="form-control" name="staff.staffSex" aria-required="true" aria-describedby="select-error" aria-invalid="true">
						<option value="">选择...</option>
						<option value="1">男</option>
						<option value="2">女</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="account" class="col-md-3 control-label">年龄:&nbsp;</label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="staff.staffAge">
				</div>
			</div>
			<div class="form-group">
				<label for="account" class="col-md-3 control-label">电话:&nbsp;</label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="staff.staffPhone">
				</div>
			</div>
			<div class="form-group">
				<label for="account" class="col-md-3 control-label">部门:&nbsp;</label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="staff.staffDepartment">
				</div>
			</div>
			<div class="form-group">
				<label for="account" class="col-md-3 control-label">级别:&nbsp;</label>
				<div class="col-md-9">
					<select class="form-control" name="staff.staffGrade" aria-required="true" aria-describedby="select-error" aria-invalid="true">
						<!-- <option value="">选择...</option> -->
						<option value="1">员工</option>
						<option value="2">领导</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="account" class="col-md-3 control-label">备注:&nbsp;</label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="staff.staffNote">
				</div>
			</div>
		</div>
	</form>
</div>
<script src="<%=request.getContextPath()%>/assets/global/plugins/jquery-validation/js/jquery.validate.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/assets/global/plugins/jquery-validation/js/localization/messages_zh.min.js" type="text/javascript"></script>
<script type="text/javascript">
jQuery(document).ready(function() {	
	jQuery.validator.addMethod("letterOrNumber", function(value, element) {   
	    return this.optional(element) || (/^[0-9a-zA-Z]*$/.test(value));
	}, "员工工号必须是字母或数字");
	
	jQuery.validator.addMethod("telephone", function(value, element) {   
	    return this.optional(element) || (/^[\d]*$/.test(value));
	}, "电话必须是数字");

	
	var validator = $("#staffForm").validate({
		errorElement: 'span', //default input error message container
        errorClass: 'text-danger', // default input error message class
        focusInvalid: false, // do not focus the last invalid input

		rules: {
			"staff.staffId": {
				required: true,
				maxlength: 20,
				letterOrNumber: true
			},
	   	"staff.staffPwd": {
		    required: true,
		    maxlength: 16
			},
	   	"staff.staffName": {
		    required: true,
		    maxlength: 16
			},
	   	"staff.staffAge": {
		    //required: true,
				digits: true,
		    range: [0,100]
			},
			"staff.staffPhone":{
				telephone:true,
				maxlength: 12
			},
			"staff.staffDepartment":{
				//required: true,
				maxlength: 30
			},
			"staff.staffNote":{
				maxlength: 100
			}
	  },
		submitHandler:function(form){
			$.ajax({
				url: '<%=request.getContextPath()%>/staff/add',
				type: 'post',
				data: $("#staffForm").serializeArray(), //自动将form表单封装成json
				dataType: "json",
				success: function (data) {
					alert("保存成功");
					form.reset();
				}
			});
			return false;
		}
	});	
	
});
</script>