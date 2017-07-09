package com.FamilyEdu.Service;

import java.util.List;
import java.util.Map;

import com.FamilyEdu.Model.Course;

public interface CourseService {
	
	/**
	 * 添加课程
	 * @param course
	 */
	public void addCourse(Course course);
	
	/**
	 * 通过UserId 找到用户发布的课程
	 * @param userId
	 * @return
	 */
	public List<Course> findCoursesByUserId(String userId);
	
	/**
	 * 删除课程
	 * @param id
	 */
	public void deleteCourse(String id);
	
	/**
	 * 根据教学类型获取5条不重复用户id
	 * @param teachType  获取类型
	 * @return
	 */
	public List<Course> findCoursesByTeachType(String teachType);
	
	/**
	 * 通过课程Id获取课程信息
	 * @param id
	 * @return
	 */
	public Course getCourse(int id);
	
	/**
	 * 根据关键字搜索对应课程
	 * @param keyWord
	 * @return
	 */
	public Map<String,Object> findCoursesByKeyWord(String keyWord, String page);

	/**
	 * 将传输的关键词学段转成指定模式
	 * @param searchPeriod
	 * @return
	 */
	public String tranPeriod(String searchPeriod);
	
	/**
	 * 将传输的关键词性别转成指定模式
	 * @param searchGender
	 * @return
	 */
	public String tranGender(String searchGender);
	
	/**
	 * 将传输的关键词年级转成指定模式
	 * @param searchGrade
	 * @return
	 */
	public String tranGrade(String searchGrade);
	
	/**
	 * 将传输的关键词教学方式转成指定模式
	 * @param searchTeachMethod
	 * @return
	 */
	public String tranTeachMethod(String searchTeachMethod);
	
	/**
	 * 根据关键字搜索课程
	 * @param keyWord
	 * @return
	 */
	public Map<String,Object> findCourses(String keyWord, String page);

}
