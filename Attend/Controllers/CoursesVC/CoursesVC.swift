//
//  ViewController.swift
//  Attend
//
//  Created by suat.karakusoglu on 09/11/2017.
//  Copyright © 2017 suat.karakusoglu. All rights reserved.
//

import UIKit

class CoursesVC: UIViewController
{
    @IBOutlet weak var collectionViewCourses: UICollectionView!
    
    var courses: [Course] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.navigationItem.title = "Courses"
        self.addCourseButtonToRight()
        self.prepareCollectionView()
        
        let courseModels = self.getCourseModels()
        debugPrint("Our saved courses \(courseModels)")
    }
    
    func prepareCollectionView()
    {
        self.collectionViewCourses.delegate = self
        self.collectionViewCourses.dataSource = self
        self.registerCell(nibName: "CourseItemCell")
    }
    
    func registerCell(nibName: String)
    {
        let nibToRegister = UINib(nibName: nibName, bundle: nil)
        self.collectionViewCourses.register(
            nibToRegister,
            forCellWithReuseIdentifier: nibName
        )
    }
    
    func loadCoursesToVC()
    {
        
    }
    
    func getCourseModels() -> [Course]
    {
        var courses: [Course] = []
        let courseNames = DataHelper.getCourseNames()
        for courseName in courseNames
        {
            if let course = FileHelper.getCourse(courseName: courseName){
                courses.append(course)
            }
        }
        return courses
    }
    
    func addCourseButtonToRight()
    {
        let imageAddCourse = #imageLiteral(resourceName: "icon_add_course")
        let addCourseButton = UIBarButtonItem(
            image: imageAddCourse,
            style: UIBarButtonItemStyle.plain,
            target: self,
            action: #selector(CoursesVC.userClickedAddCourse)
        )
        addCourseButton.tintColor = UIColor.orange
        self.navigationItem.rightBarButtonItem = addCourseButton
    }
    
    @objc func userClickedAddCourse()
    {
        let addCourseVC = AddCourseVC(nibName: nil, bundle: nil)
        
        self.navigationController?.pushViewController(
            addCourseVC,
            animated: true
        )
    }
}

extension CoursesVC: UICollectionViewDelegate
{

}

extension CoursesVC: UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        if let courseItemCell = collectionView.dequeueReusableCell(
            withReuseIdentifier: "CourseItemCell",
            for: indexPath
        ) as? CourseItemCell
        {
            let currentCourse = self.courses[indexPath.row]
            courseItemCell.applyCourseModel(course: currentCourse)
            return courseItemCell
        }
        
        return UICollectionViewCell()
    }
}
































