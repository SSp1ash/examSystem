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
                    手动调整排考<small>&nbsp;&nbsp;&nbsp;${userType}@${userName}</small>
                </h1>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <ul class="nav nav-tabs">
                <li>
                    <a href="/exam/admin/examArranged/manualArranged?week=1">考试周第一周</a>
                </li>
                <li>
                    <a href="/exam/admin/examArranged/manualArranged?week=2">考试周第二周</a>
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

                <tr>
                    <td>上午一</td>
                    <#list timetables1 as timetable>
                    <td style="display: none">${timetable.getTimeDetail()}</td>

                        <#if timetable.getBeArranged()=="1">
                        <td>${timetable.getRemixId()}</td>
                        </#if>
                        <#if timetable.getBeArranged()=="0">
                            <td><a href="#arrangedCourse" class="arranged" data-toggle="modal">可排课</a></td>
                        </#if>
                    </#list>
                </tr>
                <tr>
                    <td>上午二</td>
                    <#list timetables2 as timetable>
                    <td style="display: none">${timetable.getTimeDetail()}</td>
                        <#if timetable.getBeArranged()=="1">
                        <td>${timetable.getRemixId()}</td>
                        </#if>
                        <#if timetable.getBeArranged()=="0">
                        <td><a href="#arrangedCourse" class="arranged" data-toggle="modal">可排课</a></td>
                        </#if>
                    </#list>
                </tr>
                <tr>
                    <td>下午一</td>
                    <#list timetables3 as timetable>
                    <td style="display: none">${timetable.getTimeDetail()}</td>
                        <#if timetable.getBeArranged()=="1">
                        <td>${timetable.getRemixId()}</td>
                        </#if>
                        <#if timetable.getBeArranged()=="0">
                        <td><a href="#arrangedCourse" class="arranged" data-toggle="modal">可排课</a></td>
                        </#if>
                    </#list>
                </tr>
                <tr>
                    <td>下午二</td>
                    <#list timetables4 as timetable>
                    <td style="display: none">${timetable.getTimeDetail()}</td>
                        <#if timetable.getBeArranged()=="1">
                        <td>${timetable.getRemixId()}</td>
                        </#if>
                        <#if timetable.getBeArranged()=="0">
                        <td><a href="#arrangedCourse" class="arranged" data-toggle="modal">可排课</a></td>
                        </#if>
                    </#list>
                </tr>


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
            <button type="button" class="btn btn-lg btn-success" href="#modal-container-757682" id="modal-757682" data-toggle="modal">手动Remix课程</button>
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


<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <a id="modal-757682" style="display: none" href="#modal-container-757682" role="button" class="btn" data-toggle="modal">触发遮罩窗体</a>

            <div class="modal fade" id="modal-container-757682" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static" data-keyboard="false">
                <div class="modal-dialog" >
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title" id="myModalLabel">
                                手动Remix课程
                            </h4>
                        </div>
                        <form id="remix">
                        <div class="modal-body">
                            <select class="form-control" style="width: 200px;" name="courseA">
                                <#list courseExamNotRemixes as courseExamNotRemix>
                                <option value="${courseExamNotRemix.getCourseNo()}">${courseExamNotRemix.getCourseNo()}${courseExamNotRemix.getCourseName()}</option>
                            </#list>
                            </select>
                            <select class="form-control" style="width: 200px;" name="courseB">
                                 <#list courseExamNotRemixes as courseExamNotRemix>
                                     <option value="${courseExamNotRemix.getCourseNo()}">${courseExamNotRemix.getCourseNo()}${courseExamNotRemix.getCourseName()}</option>
                                 </#list>
                            </select>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-primary" id="remixCourse">Remix</button>
                        </div>
                        </form>
                    </div>

                </div>

            </div>

        </div>
    </div>
</div>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <a  style="display: none" href="#arrangedCourse" role="button" class="btn" data-toggle="modal">触发遮罩窗体</a>

            <div class="modal fade" id="arrangedCourse" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static" data-keyboard="false">
                <div class="modal-dialog" >
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title" id="myModalLabel">
                                排考课程
                            </h4>
                        </div>
                        <form id="selectRemixCourse">
                            <div class="modal-body">
                                <div class="form-group">
                                    <label for="course" class="col-sm-2 control-label">具体时间</label>
                                    <div class="col-sm-3">
                                        <input type="text" readonly="readonly" value="0" name="timeDetail" class="form-control" id="timeDetail" />
                                    </div>
                                </div>
                                <select class="form-control" style="width: 200px;" name="remixCourseId">
                                <#list courseRemixes as courseRemix>
                                    <option value="${courseRemix.getRemixId()}">${courseRemix.getRemixId()}</option>
                                </#list>
                                </select>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-primary" id="gogogo">安排</button>
                            </div>
                        </form>
                    </div>

                </div>

            </div>

        </div>
    </div>
</div>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <button id="modal-659951" href="#modal-container-659951" role="button" class="btn btn-default btn-primary" data-toggle="modal">查看Remix情况</button>

            <div class="modal fade" id="modal-container-659951"  role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog" style="width: 1200px">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title" id="myModalLabel">
                                查看Remix情况
                            </h4>
                        </div>
                        <div class="modal-body">
                            <div class="container">
                                <div class="row clearfix">
                                    <div class="col-md-12 column">
                                        <table class="table table-condensed table-bordered table-hover">
                                            <thead>
                                            <tr>
                                                <th>RemixID</th>
                                                <th>课程ID</th>
                                                <th>课程名</th>
                                                <th>是否被安排</th>
                                                <th>学期</th>
                                            </tr>
                                            </thead>
                                            <tbody>


                                        <#list allCourseRemixRecord as CourseRemixRecord>
                                        <tr>
                                            <td>${CourseRemixRecord.getRemixId()}</td>
                                            <td>${CourseRemixRecord.getCourseId()}</td>
                                            <td>${CourseRemixRecord.getCourseName()}</td>
                                            <#if CourseRemixRecord.getBeArranged()=="1">
                                            <td>已安排</td>
                                            <#else>
                                            <td>未安排</td>
                                            </#if>
                                            <td>${CourseRemixRecord.getTime()}</td>

                                        </tr>
                                        </#list>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>.
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
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
            <button id="modal-659952" href="#modal-container-659952" role="button" class="btn btn-default btn-primary" data-toggle="modal">分配监考老师以及考室</button>

            <div class="modal fade" id="modal-container-659952"  role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog" style="width: 1200px">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title" id="myModalLabel">
                                分配监考老师以及考室
                            </h4>
                        </div>
                        <div class="modal-body">
                            <form class="selectTeacherAndRoom" id="selectTeacherAndRoom">
                            <select class="form-control" style="width: 200px;" name="selectTimeDetail" id="selectTimeDetail">
                                <option value=""></option>
                                <#list timeTables as timeTable>
                                    <option value="${timeTable.getTimeDetail()}">${timeTable.getTimeDetail()}</option>
                                </#list>
                            </select>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
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
            <button type="button" class="btn btn-lg btn-success" id="stuSit">学生座位生成</button>
        </div>
    </div>
</div>


<#if !(courseExams?has_content)>
<script>
    alert("系统检测到还没进行确认考试，将进行考试科目确认，该确认不会生成remix课程，需要自己手动设置");
    function remind(){
    $("#modal-757680").trigger("click");
    }
    $(document).ready(function(){

        window.onload=remind();
    });

    $('#confirmExamCourse').click(function(){
        $.ajax({url:"/exam/admin/examArranged/confirmExamCourse2",
            dataType:"json",
            success: function () {
                alert("确认成功");
                window.location.reload();
            }
        });
    });

</script>
</#if>

<script>
    $('#stuSit').click(function(event){
        event.preventDefault();

        $.ajax({
            type:"get",
            url:"/exam/admin/examArranged/stuSit",
            dataType:"json",
            success: function (data) {
                alert(data.msg);
                window.location.reload();
            }
        });
    });

    $("select#selectTimeDetail").change(function(){
        var timeDetail=$(this).val();
        $.ajax({
            type:"get",
            url:"/exam/admin/examArranged/getTeacherNumExamRoomNum?timeDetail="+timeDetail,
            contentType: false,
            processData: false,
            dataType:"json",
            success: function (data) {
                var teacherNum1=data.data[0].teacherNum;
                var roomNum1=data.data[0].roomNum;
                var courseName1=data.data[0].courseName;
                if(data.data[1]!=null){
                    var teacherNum2=data.data[1].teacherNum;
                    var roomNum2=data.data[1].roomNum;
                    var courseName2=data.data[1].courseName;
                }
                $(".selectTeacherAndRoom").append("<label for=\"course\" class=\"col-sm-2 control-label\">"+courseName1+"需要监考教师数量"+teacherNum1+"需要考室数量"+roomNum1+"</label>" );


                    $(".selectTeacherAndRoom").append("" +
                            "<select multiple name='teacherA'><#list teacherList as teacher><option value='${teacher.getTcNo()}'>${teacher.getTcName()}${teacher.getTcNo()}</option></#list></select>"
                    );



                    $(".selectTeacherAndRoom").append("" +
                            "<select multiple name='roomA'><#list examRoomList as examRoom> <option value='${examRoom.getRoomNo()}'>${examRoom.getRoomNo()}${examRoom.getRoomPlace()}</option></#list></select>"
                    );

                if(data.data[1]!=null){
                    $(".selectTeacherAndRoom").append("<label for=\"course\" class=\"col-sm-2 control-label\">"+courseName2+"需要监考教师数量"+teacherNum2+"需要考室数量"+roomNum2+"</label>" );

                        $(".selectTeacherAndRoom").append("" +
                                "<select multiple name='teacherB'><#list teacherList as teacher> <option value='${teacher.getTcNo()}'>${teacher.getTcName()}${teacher.getTcNo()}</option></#list></select>"
                        );


                        $(".selectTeacherAndRoom").append("" +
                                "<select multiple name='roomB'><#list examRoomList as examRoom> <option value='${examRoom.getRoomNo()}'>${examRoom.getRoomNo()}${examRoom.getRoomPlace()}</option></#list></select>"
                        );

                }
                $(".selectTeacherAndRoom").append("<button type='button' class='btn btn-primary' id='arrangedTeacherAndRoom'>安排</button>");
            }
        });
        });


    $('body').on('click','#arrangedTeacherAndRoom',(function(event){
        event.preventDefault();
        var formData= new FormData(document.getElementById("selectTeacherAndRoom"));

        $.ajax({
            type:"post",
            url:"/exam/admin/examArranged/arrangedTeacherAndRoom",
            data:formData,
            contentType: false,
            processData: false,
            dataType:"json",
            success: function (data) {
                alert(data.msg);
                window.location.reload();
            }
        });
    }));

    $('#remixCourse').click(function(event){
        event.preventDefault();
        var formData= new FormData(document.getElementById("remix"));

        $.ajax({
            type:"post",
            url:"/exam/admin/examArranged/remixCourse",
            data:formData,
            contentType: false,
            processData: false,
            dataType:"json",
            success: function (data) {
                alert(data.msg);
                window.location.reload();
            }
        });
    });


    $(".arranged").click(function(event){
        event.preventDefault();
        var timeDetail = $(this).parents("td").prev().html();
        $("#timeDetail").val(timeDetail);
    });


    $('#gogogo').click(function(event){
        event.preventDefault();
        var formData= new FormData(document.getElementById("selectRemixCourse"));

        $.ajax({
            type:"post",
            url:"/exam/admin/examArranged/arrangedRemixCourse",
            data:formData,
            contentType: false,
            processData: false,
            dataType:"json",
            success: function (data) {
                alert(data.msg);
                window.location.reload();
            }
        });
    });

</script>
