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
                    成绩统计分析<small>&nbsp;&nbsp;&nbsp;${userType}@${userName}</small>
                </h1>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <p class="text">
                查看成绩分析统计。
            </p>
        </div>
    </div>
    <button role="button" class="btn btn-default btn-primary" id="createScoreAnalyse" data-toggle="modal">生成成绩统计表</button>
</div>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-bordered table-hover table-condensed">
                <thead>
                <tr>
                    <th>教师工号</th>
                    <th>教师姓名</th>
                    <th>学生数量</th>
                    <th>挂科人数</th>
                    <th>挂科率</th>
                    <th>平均分数</th>
                    <th>学期</th>
                </tr>
                </thead>
                <tbody>
                <#list scoreAnalyses.getContent() as scoreAnalyse>

                <tr>
                    <td>${scoreAnalyse.getTcNo()}</td>
                    <td>${scoreAnalyse.getTcName()}</td>
                    <td>${scoreAnalyse.getStuNum()}</td>
                    <td>${scoreAnalyse.getFailNum()}</td>
                    <td>${scoreAnalyse.getFailRate()}</td>
                    <td>${scoreAnalyse.getScoreAvg()}</td>
                    <td>${scoreAnalyse.getTimeSemester()}</td>
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
                <li><a href="viewScoreAnalyse?page=${currentPage-1}&size=${size}">上一页</a></li>

                 <#list 1..scoreAnalyses.getTotalPages() as index>
                     <#if currentPage==index>
                        <li class="disabled"><a href="viewScoreAnalyse?page=${index}&size=${size}">${index}</a></li>
                     <#else>
                        <li><a href="viewScoreAnalyse?page=${index}&size=${size}">${index}</a></li>
                     </#if>
                 </#list>

                <li><a href="viewScoreAnalyse?page=${currentPage+1}&size=${size}">下一页</a></li>
            </ul>
        </div>
    </div>
</div>


<script>
    $('#createScoreAnalyse').click(function(event){
        event.preventDefault();
        $.ajax({
            type:"get",
            url:"/exam/admin/createScoreAnalyse",
            dataType:"json",
            success: function () {
                alert("生成成功");
                window.location.reload();
            }
        });
    });
</script>
