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
                    查询监考信息<small>&nbsp;&nbsp;&nbsp;${userType}@${userName}</small>
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
                    <th>具体时间</th>
                    <th>考试科目</th>
                    <th>地点</th>
                    <th>监考教师</th>
                    <th>学期</th>
                </tr>
                </thead>
                <tbody>
                <#list invigilates as invigilate>
                <tr>
                    <td>${invigilate.getTimeDetail()}</td>
                    <td>${invigilate.getCourseName()}</td>
                    <td>${invigilate.getRoomNo()}</td>
                    <td>${invigilate.getTeacherName()}</td>
                    <td>${invigilate.getTimeSemester()}</td>
                </tr>
                </#list>
                </tbody>
            </table>
        </div>
    </div>
</div>
