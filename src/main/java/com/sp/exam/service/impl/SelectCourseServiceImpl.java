package com.sp.exam.service.impl;

import com.sp.exam.dao.*;
import com.sp.exam.pojo.CourseAvailable;
import com.sp.exam.pojo.CourseSelect;
import com.sp.exam.pojo.CourseSelectResult;
import com.sp.exam.pojo.Student;
import com.sp.exam.service.SelectCourseService;
import com.sp.exam.utils.GetSemester;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.swing.text.html.Option;
import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@Service
public class SelectCourseServiceImpl implements SelectCourseService {
    @Autowired
    private StudentDao studentDao;

    @Autowired
    private CourseDao courseDao;

    @Autowired
    private CourseAvailableDao courseAvailableDao;

    @Autowired
    private CourseSelectDao courseSelectDao;

    @Autowired
    private CourseSelectResultDao courseSelectResultDao;

    @Override
    @Transactional
    public void autoSelectCourse() {
        //1.查找course_available里面的内容，需要符合当前时间，然后把符合公共课的可选形成一个List
        List<CourseAvailable> byTime = courseAvailableDao.findByTime(GetSemester.get());
        //2.查找出所有在校学生形成一个List
        List<Student> byResident = studentDao.findByResident("1");
        //3.遍历学生的List
        for (Student stu:byResident){
            for (CourseAvailable course:byTime){
                //先人数满没满，然后判断学生是否该选这门课，然后判断学生是否选择了该课，最后判断学期是否符合
                if(course.getNumber()<course.getCapacity()
                        &&courseDao.findById(course.getCourseNo()).get().getLimit()==0
                        && GetSemester.getStudentSemester(stu.getStuGrade())
                        .equals(courseDao.findById(course.getCourseNo()).get().getCourseSemester())){

                    boolean byStuNoAndCourseNo = courseSelectDao.existsByStuNoAndCourseNo(stu.getStuNo(), course.getCourseNo());
                    //加判断
                    courseDao.findById(course.getCourseNo()).get().getCourseSemester();
                    if(!byStuNoAndCourseNo){
                            CourseSelect courseSelect=new CourseSelect();
                            courseSelect.setCourseNo(course.getCourseNo());
                            courseSelect.setStuNo(stu.getStuNo());
                            courseSelect.setSelectTc(course.getTcNo());
                            courseSelect.setTime(GetSemester.get());
                            courseSelectDao.save(courseSelect);
                            //一个学生选好后就把已选的数量加一
                            course.setNumber(course.getNumber()+1);
                            courseAvailableDao.save(course);
                            
                        }
                    }
                }

            }





        }

    }

