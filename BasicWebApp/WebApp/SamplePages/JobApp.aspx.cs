using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp.SamplePages
{
    public partial class JobApp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //MessageLabel will be emptied on each event
            //Page_Load executes before any button events
            MessageLabel.Text = "";
        }

        protected void Clear_Click1(object sender, EventArgs e)
        {
            FullName.Text = "";
            EmailAddress.Text = "";
            PhoneNumber.Text = "";
            FullOrPartTime.SelectedIndex = -1; //manually reset the radiobuttonlist
            Jobs.ClearSelection(); //a method which resets a list (checkbox or radio)
        }

        protected void Submit_Click1(object sender, EventArgs e)
        {
            string msg = "";
            msg += $"Name: {FullName.Text}";
            msg += $" Email: {EmailAddress.Text}";
            msg += $" Phone: {PhoneNumber.Text}";
            msg += $" Time: {(FullOrPartTime.SelectedValue == "1" ? "Full Time" : "Part Time")}";

            //traverse the checkbox list, review one item at a time and add those items selected to the message.
            //if no items were chosen, then add a message saying no items were chosen.

            msg += "Jobs: ";
            bool found = false;
            foreach (ListItem jobrow in Jobs.Items)
            {
                if (jobrow.Selected)
                {
                    msg += $"{jobrow.Text}   ";
                    found = true;
                }
            }
            if (!found)
            {
                msg += "You did not select a job, application rejected";
            }

            MessageLabel.Text = msg;
            
        }
    }
}