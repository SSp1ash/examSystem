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
                    考场管理<small>&nbsp;&nbsp;&nbsp;${userType}@${userName}</small>
                </h1>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <p class="text">
                管理考场数据。
            </p>
        </div>
    </div>
</div>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <button id="modal-662078" href="#modal-container-662078" role="button" class="btn btn-default btn-primary addButton" data-toggle="modal">添加考场</button>

            <div class="modal fade" id="modal-container-662078" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title" id="myModalLabel">
                                添加考场
                            </h4>
                        </div>
                        <div class="container">
                            <div class="row clearfix">
                                <div class="col-md-12 column">
                                    <form name="addExamRoom" id="addExamRoom" class="form-horizontal" role="form">
                                        <div style="display: none" class="form-group">
                                            <label for="course" class="col-sm-2 control-label">id</label>
                                            <div class="col-sm-3">
                                                <input type="text" name="id" class="form-control" id="id" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="course" class="col-sm-2 control-label">教室号</label>
                                            <div class="col-sm-3">
                                                <input type="text" name="roomNo" class="form-control" id="roomNo" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="course" class="col-sm-2 control-label">地点</label>
                                            <div class="col-sm-3">
                                                <input type="text" name="roomPlace" class="form-control" id="roomPlace" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="course" class="col-sm-2 control-label">容量</label>
                                            <div class="col-sm-3">
                                                <input type="text" name="capacity1" class="form-control" id="capacity" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="course" class="col-sm-2 control-label">状态</label>
                                            <select class="form-control" style="width: 200px;" name="available">
                                                <option value="1">可用</option>
                                                <option value="0">不可用</option>

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
                    <th>教室号</th>
                    <th>地点</th>
                    <th>容量</th>
                    <th>状态</th>
                    <th colspan="2">操作</th>
                </tr>
                </thead>
            <tbody>
                <#list allExamRoom.getContent() as examRoom>

                <tr>
                    <td style="display: none">${examRoom.getId()}</td>
                    <td>${examRoom.getRoomNo()}</td>
                    <td>${examRoom.getRoomPlace()}</td>
                    <td>${examRoom.getCapacity()}</td>
                    <#if examRoom.getAvailable()==1>
                        <td>可用</td>
                    <#else ><td>不可用</td>
                    </#if>
            <td><a role="button" class="btn btn-default btn-primary" data-toggle="modal" href="deleteExamRoom?id=${examRoom.getId()}">删除</a></td>
            <td><a role="button" class="btn btn-default btn-primary modifyExamRoom" data-toggle="modal" href="#modal-container-662078">修改</a></td>
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
            <ul class="pagination">
                <li><a href="examRoomData?page=${currentPage-1}&size=${size}">上一页</a></li>

                 <#list 1..allExamRoom.getTotalPages() as index>
                     <#if currentPage==index>
                        <li class="disabled"><a href="examRoomData?page=${index}&size=${size}">${index}</a></li>
                     <#else>
                        <li><a href="examRoomData?page=${index}&size=${size}">${index}</a></li>
                     </#if>
                 </#list>

                <li><a href="examRoomData?page=${currentPage+1}&size=${size}">下一页</a></li>
            </ul>
        </div>
    </div>
</div>


<script>
    $(".addButton").click(function (event) {
        event.preventDefault();
        $("#id").val("");
        $("#roomNo").val("");
        $("#roomPlace").val("");
        $("#capacity").val("");
        $("#available").val("可用");
    })


    $('.modifyExamRoom').click(function (event) {
        event.preventDefault();
        var id = $(this).parents("tr").find("td").eq(0).html();
        var roomNo = $(this).parents("tr").find("td").eq(1).html();
        var roomPlace=$(this).parents("tr").find("td").eq(2).html();
        var capacity = $(this).parents("tr").find("td").eq(3).html();
        var available=$(this).parents("tr").find("td").eq(4).html();
        $("#id").val(id);
        $("#roomNo").val(roomNo);
        $("#roomPlace").val(roomPlace);
        $("#capacity").val(capacity);
        $("#available").val(available);
    })


    $('#add').click(function(event){
        event.preventDefault();
        var formData= new FormData(document.getElementById("addExamRoom"));

        $.ajax({
            type:"post",
            url:"/exam/admin/addExamRoom",
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
