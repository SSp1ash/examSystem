<html>
<#include "../common/header.ftl">


<body>
<#if userType=="监考教师">
    <div id="wrapper" class="toggled">
        <#include  "../common/navTeacher.ftl">
    </div>
</#if>

<#if userType=="管理员">
    <div id="wrapper" class="toggled">
        <#include  "../common/navAdmin.ftl">
    </div>
</#if>

<#if userType=="学生">
    <div id="wrapper" class="toggled">
        <#include  "../common/navStudent.ftl">
    </div>
</#if>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    登录学生成绩<small>&nbsp;&nbsp;&nbsp;${userType}@${userName}</small>
                </h1>
            </div>
        </div>
    </div>
</div>


<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-condensed table-bordered table-hover">
                <thead>
                <tr>
                    <th>学号</th>
                    <th>学生姓名</th>
                    <th>课程号</th>
                    <th>课程名</th>
                    <th>分数</th>
                    <th>学期</th>
                    <th colspan="2">操作</th>
                </tr>
                </thead>
                <tbody>
                <#list studentScores as studentScore>
                <tr>
                    <td hidden>${studentScore.getId()?c}</td>
                    <td>${studentScore.getStuNo()}</td>
                    <td>${studentScore.getStuName()}</td>
                    <td>${studentScore.getCourseNo()}</td>
                    <td>${studentScore.getCourseName()}</td>
                    <#if studentScore.getScore()??>
                        <td>${studentScore.getScore()}</td>
                    <#else><td></td>
                    </#if>

                    <td>${studentScore.getTimeSemester()}</td>

                    <td>
                        <a href="#modal-container-599767" role="button" class="btn updateScore" data-toggle="modal">修改成绩</a>
                    </td>
                </tr>
                </#list>

                <div class="modal fade" id="modal-container-599767" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                <h4 class="modal-title" id="myModalLabel">
                                    修改成绩
                                </h4>
                            </div>
                            <form id="updateScore">
                            <input type="text" style="display: none" class="form-control" id="courseSelectId" name="courseSelectId" />
                            <div class="form-group" style="position: relative; left:30%">
                                <label for="exampleInputEmail1">成绩</label><input type="text" style="width: 40%" class="form-control" id="score" name="score"/>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button> <button type="button" id="update" class="btn btn-primary">提交</button>
                            </div>
                            </form>
                        </div>

                    </div>

                </div>

                </tbody>
            </table>
        </div>
    </div>
</div>


</html>

<script>
    $(".updateScore").click(function () {
        var id = $(this).parents("tr").find("td").eq(0).html();
        var score=$(this).parents("tr").find("td").eq(5).html();
        $("#score").val(score);
        $("#courseSelectId").val(id);

    })

    $('#update').click(function(event){
        event.preventDefault();
        var formData= new FormData(document.getElementById("updateScore"));

        $.ajax({
            type:"post",
            url:"/exam/teacher/add",
            data:formData,
            contentType: false,
            processData: false,
            dataType:"json",
            success: function (data) {
                if(data.msg=="成功"){
                    window.location.reload();
                }

            }
        });
    });


</script>

