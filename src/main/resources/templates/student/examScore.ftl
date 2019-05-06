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
                    考试成绩<small>&nbsp;&nbsp;&nbsp;${userType}@${userName}</small>
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
                    <th>课程号</th>
                    <th>课程名</th>
                    <th>分数</th>
                    <th>学期</th>
                </tr>
                </thead>
                <tbody>
                <#list courseSelectDTOS as stuExamDetail>
                <tr>
                    <td>${stuExamDetail.getCourseNo()}</td>
                    <td>${stuExamDetail.getCourseName()}</td>
                    <#if stuExamDetail.getScore()??&&stuExamDetail.getScore() gte 60>
                        <td><p>${stuExamDetail.getScore()}</p></td>
                    <#elseif stuExamDetail.getScore()??&&stuExamDetail.getScore() lt 60>
                        <td><p style="color: red;">${stuExamDetail.getScore()}</p></td>
                    <#else>
                        <td></td>
                    </#if>
                    <td>${stuExamDetail.getTimeSemester()}</td>
                </tr>
                </#list>
                </tbody>
            </table>
        </div>
    </div>
</div>
