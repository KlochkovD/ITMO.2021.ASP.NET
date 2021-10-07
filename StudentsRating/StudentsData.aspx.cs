using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity.Validation;


namespace StudentsRating
{
    public partial class StudentsData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Page.Validate();
                if (!Page.IsValid)
                return;
                int x = 0;
                int y = 0;
                Int32.TryParse(uniqid.Text, out x);
                Int32.TryParse(rating.Text, out y);
                Students sr = new Students (x, name.Text, y, lessondate.Text, lessondescription.Text);
                StudentsRepository.GetRepository().AddResponse(sr);
              

                  try
                {
                    SampleContext context = new SampleContext();
                    context.Students.Add(sr);
                    context.SaveChanges();

                }
                catch (DbEntityValidationException ex)
                {
                    foreach (DbEntityValidationResult validationError in ex.EntityValidationErrors)
                    {
                        Response.Write("Object: " + validationError.Entry.Entity.ToString());
                        Response.Write("");
                        foreach (DbValidationError err in validationError.ValidationErrors)
                        {
                            Response.Write(err.ErrorMessage + "");
                        }
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("Ошибка " + ex.Message);
                }


            }

        }
    }
}