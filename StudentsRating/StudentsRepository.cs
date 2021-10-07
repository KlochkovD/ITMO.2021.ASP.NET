using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace StudentsRating
{
    public class StudentsRepository
    {
        private static StudentsRepository repository = new StudentsRepository();
        private List<Students> responses = new List<Students>();
        public static StudentsRepository GetRepository()
        {
            return repository;
        }
        public IEnumerable<Students> GetAllResponses()
        {
            return responses;
        }
        public void AddResponse(Students response)
        {
            responses.Add(response);
        }
    }
}