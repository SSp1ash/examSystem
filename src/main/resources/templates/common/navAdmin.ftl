<nav class="navbar navbar-inverse navbar-fixed-top" id="sidebar-wrapper" role="navigation">
    <ul class="nav sidebar-nav">
        <li class="sidebar-brand">
            <a href="#">
                考务管理系统
            </a>
        </li>
        <li>
            <a href="/exam/user/userInfo"><i class="fa fa-fw fa-list-alt"></i> 我的资料</a>
        </li>


        <li class="dropdown open">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true"><i class="fa fa-fw fa-plus"></i> 数据管理 <span class="caret"></span></a>
            <ul class="dropdown-menu" role="menu">
                <li class="dropdown-header">操作</li>
                <li><a href="/exam/admin/courseData">课程信息</a></li>
                <li><a href="/exam/admin/studentData">学生信息</a></li>
                <li><a href="/exam/admin/teacherData">教师信息</a></li>
                <li><a href="/exam/admin/examRoomData">考场信息</a></li>
                <li class="dropdown-header"></li>


            </ul>
        </li>

        <li class="dropdown open">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true"><i class="fa fa-fw fa-plus"></i> 选课系统 <span class="caret"></span></a>
            <ul class="dropdown-menu" role="menu">
                <li class="dropdown-header">操作</li>
                <li><a href="/exam/admin/selectCourse/autoSelectSite">自动选课</a></li>
                <li><a href="/exam/admin/selectCourse/confirmSelectCourse">生成课号</a></li>
                <li class="dropdown-header"></li>
            </ul>
        </li>
        <li class="dropdown open">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true"><i class="fa fa-fw fa-plus"></i> 考务管理 <span class="caret"></span></a>
            <ul class="dropdown-menu" role="menu">
                <li class="dropdown-header">操作</li>
                <li><a href="/exam/admin/examArranged/autoArranged">自动排考</a></li>
                <li><a href="/exam/admin/examArranged/manualArranged">手动调整排考</a></li>
                <li><a href="/exam/admin/examArranged/detailArrangedExam">查看详细排考情况</a></li>
                <li class="dropdown-header"></li>

            </ul>
        </li>

        <li>
            <a href="/exam/admin/viewScoreAnalyse"><i class="fa fa-fw fa-list-alt"></i> 成绩分析统计</a>
        </li>

        <li>
            <a href="/exam/user/logout"><i class="fa fa-fw fa-list-alt"></i> 登出</a>
        </li>
    </ul>




</nav>
