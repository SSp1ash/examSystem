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
                    生成课号<small>&nbsp;&nbsp;&nbsp;管理员@SSp1ash</small>
                </h1>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <p class="text">
                生成课号前请先确认当前的选课情况。
            </p>
        </div>
    </div>
</div>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-bordered table-hover table-condensed">
                <thead>
                <tr>
                    <th>编号</th>
                    <th>课程代号</th>
                    <th>教师姓名</th>
                    <th>容量</th>
                    <th>已选人数</th>
                    <th>学期</th>
                </tr>
                </thead>
                <tbody>
                <#list courseAvailableStatusPage.getContent() as courseAvailabelDTO>

                <tr>
                    <td>${courseAvailabelDTO.getId()}</td>
                    <td>${courseAvailabelDTO.getCourseNo()}</td>
                    <td>${courseAvailabelDTO.getTc()}</td>
                    <td>${courseAvailabelDTO.getCapacity()}</td>
                    <td>${courseAvailabelDTO.getNumber()}</td>
                    <td>${courseAvailabelDTO.getTime()}</td>
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
                <li><a href="confirmSelectCourse?page=${currentPage-1}&size=${size}">上一页</a></li>

                 <#list 1..courseAvailableStatusPage.getTotalPages() as index>
                     <#if currentPage==index>
                        <li class="disabled"><a href="confirmSelectCourse?page=${index}&size=${size}">${index}</a></li>
                     <#else>
                        <li><a href="confirmSelectCourse?page=${index}&size=${size}">${index}</a></li>
                     </#if>
                 </#list>

                <li><a href="confirmSelectCourse?page=${currentPage+1}&size=${size}">下一页</a></li>
            </ul>
        </div>
    </div>
</div>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <button id="modal-149491" href="#modal-container-149491" role="button" class="btn btn-default btn-primary" data-toggle="modal">生成课号</button>

            <div class="modal fade" id="modal-container-149491" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title" id="myModalLabel">
                                确认课号
                            </h4>
                        </div>
                        <div class="modal-body">
                            确定要把当前的选课信息确定下来吗？
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

<script>
    $('#confirm').click(function(){
        $.ajax({url:"/exam/admin/selectCourse/confirmSelectCourse/confirm",
            dataType:JSON,
            success:alert("确定成功")
        });
    });
</script>
