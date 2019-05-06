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
                    查看排考详情<small>&nbsp;&nbsp;&nbsp;${userType}@${userName}</small>
                </h1>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <p class="text">
                查看排考的详情。
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
                    <th>课程名</th>
                    <th>具体时间</th>
                    <th>地点</th>
                    <th>监考教师</th>
                    <th>学期</th>

                </tr>
                </thead>
                <tbody>
                <#list examRoomArrangedDTOS.getContent() as examRoomArrangedDTO>

                <tr>
                    <td>${examRoomArrangedDTO.getCourseName()}</td>
                    <td>${examRoomArrangedDTO.getTimeDetail()}</td>
                    <td>${examRoomArrangedDTO.getRoomNo()}</td>
                    <td>
                        <#list examRoomArrangedDTO.getTeacher() as teacher>
                            ${teacher}&nbsp
                        </#list>
                    </td>
                    <td>${examRoomArrangedDTO.getTimeSemester()}</td>


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
                <li><a href="detailArrangedExam?page=${currentPage-1}&size=${size}">上一页</a></li>

                 <#list 1..examRoomArrangedDTOS.getTotalPages() as index>
                     <#if currentPage==index>
                        <li class="disabled"><a href="detailArrangedExam?page=${index}&size=${size}">${index}</a></li>
                     <#else>
                        <li><a href="detailArrangedExam?page=${index}&size=${size}">${index}</a></li>
                     </#if>
                 </#list>

                <li><a href="detailArrangedExam?page=${currentPage+1}&size=${size}">下一页</a></li>
            </ul>
        </div>
    </div>
</div>


