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
                    自动选课<small>&nbsp;&nbsp;&nbsp;管理员@SSp1ash</small>
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

</body>

</html>
<script>
    $('#select').click(function(){
        $.ajax({url:"/exam/selectCourse/auto",
            dataType:JSON,
            success:alert("选课成功")
        });
    });
</script>
