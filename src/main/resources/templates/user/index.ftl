<html>

<head>
    <link rel="stylesheet" href="/exam/css/amazeui.min.css"/>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style>
        .header {
            text-align: center;
        }
        .header h1 {
            font-size: 200%;
            color: #333;
            margin-top: 30px;
        }
        .header p {
            font-size: 14px;
        }
    </style>
</head>



    <body>

    <div class="header">
        <div class="am-g">
            <h1>考务管理系统</h1>
            <p>The Examination Management System<br/>Cyka blyat</p>
        </div>
        <hr />
    </div>
    <div class="am-g">
        <div class="am-u-lg-6 am-u-md-8 am-u-sm-centered">
            <h3>登录</h3>
            <hr>

            <br>


            <form action="/exam/user/login" method="post" class="am-form">
                <label for="name">账号:</label>
                <input type="text" name="name" id="name" value="">
                <br>
                <label for="password">密码:</label>
                <input type="password" name="password" id="password" value="">
                <br>

                <br />


                <div class="form-group" style=" position: relative; top: -10; left: 89%;  border: 1px red;">
                    <select class="form-control" style="width: 100px;" name="userType">
                        <option value="1">学生</option>
                        <option value="2">监考老师</option>
                        <option value="3">管理员</option>
                    </select>
                </div>

                <div class="am-cf">
                    <input type="submit" name="" value="登 录" class="am-btn am-btn-primary am-btn-sm am-fl">







                </div>
            </form>
            <hr>
            <p>© 2019 SSp1ash</p>
        </div>
    </div>


    </body>

</html>
