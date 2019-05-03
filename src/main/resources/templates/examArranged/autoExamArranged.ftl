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
                    自动排考<small>&nbsp;&nbsp;&nbsp;${userType}@${userName}</small>
                </h1>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <ul class="nav nav-tabs">
                <li class="active">
                    <a href="#">考试周第一周</a>
                </li>
                <li>
                    <a href="#">考试周第二周</a>
                </li>
            </ul>
        </div>
    </div>
</div>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-bordered" style="white-space: nowrap">
                <thead>
                <tr>
                    <th></th>
                    <th>星期一</th>
                    <th>星期二</th>
                    <th>星期三</th>
                    <th>星期四</th>
                    <th>星期五</th>
                </tr>
                </thead>
                <tbody>

                <tr><td>上午一</td></tr>
                <tr><td>上午二</td></tr>
                <tr><td>下午一</td></tr>
                <tr><td>下午二</td></tr>


                <#list timetables as timetable>
                <tr>
                    <#if timetable.getBeArranged()=="1">
                        <td>${timetable.getRemixId()}</td>
                    </#if>
                     <#if timetable.getBeArranged()=="0">
                        <td>可排课</td>
                     </#if>
                </tr>
                </#list>


                </tbody>
            </table>
        </div>
    </div>
</div>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <button id="modal-149491" href="#modal-container-149491" role="button" class="btn btn-default btn-primary" data-toggle="modal">查看课程排课情况</button>

            <div class="modal fade" id="modal-container-149491" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog" style="width: 1400px">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title" id="myModalLabel">
                                查看课程排课情况
                            </h4>
                        </div>
                        <div class="modal-body">
                            确定要把当前的选课信息确定下来吗？
                        </div>


                        <div class="container">
                            <div class="row clearfix">
                                <div class="col-md-12 column">
                                    <table class="table table-condensed table-bordered table-hover">
                                        <thead>
                                        <tr>
                                            <th>课程代号</th>
                                            <th>权重</th>
                                            <th>是否被安排</th>
                                            <th>学期</th>
                                        </tr>
                                        </thead>
                                        <tbody>

                                        <#if courseExams??>
                                        <#list courseExams as courseExam>
                                        <tr>
                                            <td>${courseExam.getCourseNo()}</td>
                                            <td>${courseExam.getWeight()}</td>
                                            <td>${courseExam.getBeArranged()}</td>
                                            <td>${courseExam.getTime()}</td>
                                        </tr>
                                        </#list>
                                        </#if>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>


                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button> <button id="confirm" type="button" class="btn btn-primary">确定</button>
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
            <button type="button" class="btn btn-lg btn-success" id="auto1">排课方式1</button>
        </div>
    </div>
</div>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <button type="button" class="btn btn-lg btn-warning" id="auto2">排课方式2</button>
        </div>
    </div>
</div>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <button type="button" class="btn btn-lg btn-danger" id="auto3">排课方式3</button>
        </div>
    </div>
</div>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <button type="button" class="btn btn-lg btn-success" id="last">安排老师学生以及考室</button>
        </div>
    </div>
</div>


<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <a id="modal-757680" style="display: none" href="#modal-container-757680" role="button" class="btn" data-toggle="modal">触发遮罩窗体</a>

            <div class="modal fade" id="modal-container-757680" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static" data-keyboard="false">
                <div class="modal-dialog" style="width: 1400px">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title" id="myModalLabel">
                                标题
                            </h4>
                        </div>
                        <div class="modal-body">
                            <div class="container">
                                <div class="row clearfix">
                                    <div class="col-md-12 column">
                                        <table class="table table-condensed table-bordered table-hover">
                                            <thead>
                                            <tr>
                                                <th>课程代号</th>
                                                <th>权重</th>
                                                <th>是否被安排</th>
                                                <th>学期</th>
                                            </tr>
                                            </thead>
                                            <tbody>

                                        <#if courseExams??>
                                        <#list courseExamShows as courseExam>
                                        <tr>
                                            <td>${courseExam.getCourseNo()}</td>
                                            <td>${courseExam.getWeight()}</td>
                                            <td>${courseExam.getBeArranged()}</td>
                                            <td>${courseExam.getTime()}</td>
                                        </tr>
                                        </#list>
                                        </#if>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-primary" id="confirmExamCourse">考试科目确认</button>
                        </div>
                    </div>

                </div>

            </div>

        </div>
    </div>
</div>

<#if !(courseExams?has_content)>
<script>
    alert("系统检测到还没进行确认考试，将进行考试科目确认");
    function remind(){
    $("#modal-757680").trigger("click");
    }
    $(document).ready(function(){

        window.onload=remind();
    });

    $('#confirmExamCourse').click(function(){
        $.ajax({url:"/exam/admin/examArranged/confirmExamCourse",
            dataType:JSON,
            success:alert("确认考试科目成功")
        });
    });

</script>
</#if>

<script>
    $('#auto1').click(function(){
        $.ajax({url:"/exam/admin/examArranged/auto1",
            dataType:JSON,
            success:alert("选课方式1完成")
        });
    });
    $('#auto2').click(function(){
        $.ajax({url:"/exam/admin/examArranged/auto2",
            dataType:JSON,
            success:alert("选课方式2完成")
        });
    });
    $('#auto3').click(function(){
        $.ajax({url:"/exam/admin/examArranged/auto3",
            dataType:JSON,
            success:alert("选课方式3完成")
        });
    });
    $('#last').click(function(){
        $.ajax({url:"/exam/admin/examArranged/last",
            dataType:JSON,
            success:alert("自动排考已全部完成")
        });
    });

</script>
