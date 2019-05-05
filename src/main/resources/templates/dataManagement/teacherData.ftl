<html>
<#include "../common/header.ftl">

<body>
<div id="wrapper" class="toggled">
        <#include  "../common/navAdmin.ftl">
</div>


<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    教师管理<small>&nbsp;&nbsp;&nbsp;${userType}@${userName}</small>
                </h1>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <p class="text">
                管理教师数据。
            </p>
        </div>
    </div>
</div>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <button id="modal-662078" href="#modal-container-662078" role="button" class="btn btn-default btn-primary" data-toggle="modal">添加教师</button>

            <div class="modal fade" id="modal-container-662078" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title" id="myModalLabel">
                                添加教师
                            </h4>
                        </div>
                        <div class="container">
                            <div class="row clearfix">
                                <div class="col-md-12 column">
                                    <form name="addTeacher" id="addTeacher" class="form-horizontal" role="form">
                                        <div class="form-group">
                                            <label for="course" class="col-sm-2 control-label">工号</label>
                                            <div class="col-sm-3">
                                                <input type="text" name="tcNo" class="form-control" id="tcNo" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="course" class="col-sm-2 control-label">姓名</label>
                                            <div class="col-sm-3">
                                                <input type="text" name="tcName" class="form-control" id="tcName" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="course" class="col-sm-2 control-label">性别</label>
                                            <select class="form-control" style="width: 200px;" name="tcGender">
                                                <option value="男">男</option>
                                                <option value="女">女</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="course" class="col-sm-2 control-label">学院</label>
                                            <select class="form-control" style="width: 200px;" name="tcInst">
                                                    <#list institutions as institution>
                                                        <option value="${institution}">${institution}</option>
                                                    </#list>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="course" class="col-sm-2 control-label">电话</label>
                                            <div class="col-sm-3">
                                                <input type="text" name="tcTel" class="form-control" id="tcTel" />
                                            </div>
                                        </div>


                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button> <button type="button" class="btn btn-primary" id="add">添加</button>
                        </div>
                    </div>

                </div>

            </div>

        </div>
    </div>
</div>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-bordered table-hover table-condensed">
                <thead>
                <tr>
                    <th>工号</th>
                    <th>姓名</th>
                    <th>性别</th>
                    <th>学院</th>
                    <th>电话</th>
                </tr>
                </thead>
            <tbody>
                <#list allTeacher.getContent() as teacher>

                <tr>
                    <td>${teacher.getTcNo()}</td>
                    <td>${teacher.getTcName()}</td>
                    <td>${teacher.getTcGender()}</td>
                    <td>${teacher.getTcInst()}</td>
                    <td>${teacher.getTcTel()}</td>


                </tr>
                </tbody>
                </#list>
            </table>
        </div>
    </div>
</div>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <ul class="pagination">
                <li><a href="teacherData?page=${currentPage-1}&size=${size}">上一页</a></li>

                 <#list 1..allTeacher.getTotalPages() as index>
                     <#if currentPage==index>
                        <li class="disabled"><a href="teacherData?page=${index}&size=${size}">${index}</a></li>
                     <#else>
                        <li><a href="teacherData?page=${index}&size=${size}">${index}</a></li>
                     </#if>
                 </#list>

                <li><a href="teacherData?page=${currentPage+1}&size=${size}">下一页</a></li>
            </ul>
        </div>
    </div>
</div>


<script>

    $('#add').click(function(event){
        event.preventDefault();
        var formData= new FormData(document.getElementById("addTeacher"));

        $.ajax({
            type:"post",
            url:"/exam/admin/addTeacher",
            data:formData,
            contentType: false,
            processData: false,
            dataType:"json",
            success: function () {
                window.location.reload();
            }
        });
    });
</script>
