using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace StudentsRating
{
    public class Students
    {
        public int StudentsId { get; set; }
        public int UniqId { get; set; }
       
        public string Name { get; set; }
      
        public int Rating { get; set; }
       
        public string LessonDate { get; set; }
  
        public string LessonDescription { get; set; }
       

        public Students() { }
        public Students(int uniqid, string name, int rating, string lessondate, string lessondescription)
        {
            UniqId = uniqid;
            Name = name;
            Rating = rating;
            LessonDate = lessondate;
            LessonDescription = lessondescription;
        }
    }
}