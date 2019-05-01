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
                    用户信息<small>&nbsp;&nbsp;&nbsp;${userType}@${userName}</small>
                </h1>
            </div>
        </div>
    </div>
</div>


<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <form role="form">
                <div class="form-group">
                    <label for="exampleInputEmail1">工号/学号</label><input type="text" readonly="readonly" class="form-control" style="width: 40%;" id="username" />
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">昵称</label><input type="text" class="form-control" style="width: 40%;" id="nickname" />
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">密码</label><input type="password" class="form-control" style="width: 40%;" id="oldPassword" />
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">确认密码</label><input type="password" class="form-control" style="width: 40%;" id="newPassword" />
                </div>

            </form>
        </div>
    </div>
</div>
</body>



</html>
