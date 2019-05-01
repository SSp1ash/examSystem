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
                    自动选课<small>&nbsp;&nbsp;&nbsp;${userType}@${userName}</small>
                </h1>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <p class="lead text-warning">
                <em>自动选课</em> 是一个未上线的实验功能，目的是为了方便自动排考，请各位管理员<strong>谨慎使用</strong>。
            </p>
        </div>
    </div>
</div>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <button type="button" class="btn btn-lg btn-primary" id="select">一键选课</button>
        </div>
    </div>
</div>

<div class="container" style="position: relative; top:50px ;">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <p class="lead text-info">
                当选课时间过了后，需要进行<strong><em>生成课号</em></strong>操作，该操作用于生成开课单位。
            </p>
        </div>
    </div>
</div>

</body>

</html>
<script>
    $('#select').click(function(){
        $.ajax({url:"/exam/admin/selectCourse/auto",
            dataType:JSON,
            success:alert("选课成功")
        });
    });
</script>
