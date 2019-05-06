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
                    学生管理<small>&nbsp;&nbsp;&nbsp;${userType}@${userName}</small>
                </h1>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <p class="text">
                管理学生数据。
            </p>
        </div>
    </div>
</div>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <button id="modal-662078" href="#modal-container-662078" role="button" class="btn btn-default btn-primary addButton" data-toggle="modal">添加学生</button>

            <div class="modal fade" id="modal-container-662078" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title" id="myModalLabel">
                                添加学生
                            </h4>
                        </div>
                        <div class="container">
                            <div class="row clearfix">
                                <div class="col-md-12 column">
                                    <form name="addStudent" id="addStudent" class="form-horizontal" role="form">
                                        <div class="form-group">
                                            <label for="course" class="col-sm-2 control-label">学号</label>
                                            <div class="col-sm-3">
                                                <input type="text" name="stuNo" class="form-control" id="stuNo" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="course" class="col-sm-2 control-label">姓名</label>
                                            <div class="col-sm-3">
                                                <input type="text" name="stuName" class="form-control" id="stuName" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="course" class="col-sm-2 control-label">性别</label>
                                            <select class="form-control" style="width: 200px;" name="stuGender">
                                            <option value="男">男</option>
                                            <option value="女">女</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="course" class="col-sm-2 control-label">年级</label>
                                                <div class="col-sm-3">
                                                    <input type="text" name="stuGrade" class="form-control" id="stuGrade" />
                                                </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="course" class="col-sm-2 control-label">专业</label>
                                            <div class="col-sm-3">
                                                <input type="text" name="stuMajor" class="form-control" id="stuMajor" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="course" class="col-sm-2 control-label">学院</label>
                                            <select class="form-control" style="width: 200px;" name="stuInstitution">
                                                    <#list institutions as institution>
                                                        <option value="${institution}">${institution}</option>
                                                    </#list>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="course" class="col-sm-2 control-label">状态</label>
                                            <select class="form-control" style="width: 200px;" name="resident">
                                                <option value="1">正常</option>
                                                <option value="0">不在校</option>
                                            </select>
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
                    <th>学号</th>
                    <th>姓名</th>
                    <th>性别</th>
                    <th>年级</th>
                    <th>专业</th>
                    <th>学院</th>
                    <th>状态</th>
                    <th colspan="2">操作</th>
                </tr>
                </thead>
            <tbody>
                <#list allStudent.getContent() as student>

                <tr>
                    <td>${student.getStuNo()}</td>
                    <td>${student.getStuName()}</td>
                    <td>${student.getStuGender()}</td>
                    <td>${student.getStuGrade()}</td>
                    <td>${student.getStuMajor()}</td>
                    <td>${student.getStuInstitution()}</td>
                    <#if student.getResident()=="1">
                    <td>正常</td>
                    <#else ><td>不在校</td>
                    </#if>

                    <td><a role="button" class="btn btn-default btn-primary" data-toggle="modal" href="deleteStudent?stuNo=${student.getStuNo()}">删除</a></td>
                    <td><a role="button" class="btn btn-default btn-primary modifyStudent" data-toggle="modal" href="#modal-container-662078">修改</a></td>
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
                <li><a href="studentData?page=${currentPage-1}&size=${size}">上一页</a></li>

                 <#list 1..allStudent.getTotalPages() as index>
                     <#if currentPage==index>
                        <li class="disabled"><a href="studentData?page=${index}&size=${size}">${index}</a></li>
                     <#else>
                        <li><a href="studentData?page=${index}&size=${size}">${index}</a></li>
                     </#if>
                 </#list>

                <li><a href="studentData?page=${currentPage+1}&size=${size}">下一页</a></li>
            </ul>
        </div>
    </div>
</div>


<script>
    $(".addButton").click(function (event) {
        event.preventDefault();
        $("#stuNo").val("");
        $("#stuName").val("");
        $("#stuGender").val("");
        $("#stuGrade").val("");
        $("#stuMajor").val("");
        $("#stuInstitution").val("");
        $("#resident").val("正常");
    })


    $('.modifyStudent').click(function (event) {
        event.preventDefault();
        var stuNo = $(this).parents("tr").find("td").eq(0).html();
        var stuName=$(this).parents("tr").find("td").eq(1).html();
        var stuGender = $(this).parents("tr").find("td").eq(2).html();
        var stuGrade=$(this).parents("tr").find("td").eq(3).html();
        var stuMajor = $(this).parents("tr").find("td").eq(4).html();
        var stuInstitution = $(this).parents("tr").find("td").eq(5).html();
        var resident = $(this).parents("tr").find("td").eq(6).html();
        $("#stuNo").val(stuNo);
        $("#stuName").val(stuName);
        $("#stuGender").val(stuGender);
        $("#stuGrade").val(stuGrade);
        $("#stuMajor").val(stuMajor);
        $("#stuInstitution").val(stuInstitution);
        $("#resident").val(resident);
    })


    $('#add').click(function(event){
        event.preventDefault();
        var formData= new FormData(document.getElementById("addStudent"));

        $.ajax({
            type:"post",
            url:"/exam/admin/addStudent",
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
