using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class controls_quotesearch : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void newTrip_SelectedIndexChanged(object sender, EventArgs e)
    {
        string x = newTrip.SelectedValue;

        switch (x)
        {
            case "1":
                Panel1.Visible = false;
                newToDate.Visible = false;
                returnlabel.Visible = false;
                break;

            case "2":
                Panel1.Visible = false;
                newToDate.Visible = true;
                returnlabel.Visible = true;
                break;

            case "3":
                Panel1.Visible = true;
                newToDate.Visible = false;
                returnlabel.Visible = false;
                break;
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         if (newTrip.SelectedValue == "3")
        {
            string dateTime = DateTime.Now.ToLongDateString() + ", at " + DateTime.Now.ToShortTimeString();
            string leadMessage = "Lead generated on " + dateTime;
            leadMessage += "\n\n Trip: " + newTrip.SelectedValue;
            leadMessage += "\n\n Name: " + newName.Text;
            leadMessage += "\n\n Phone: " + newPhone.Text;
            leadMessage += "\n\n Email: " + newEmail.Text;
            leadMessage += "\n\n From: " + newFrom.Text;
            leadMessage += "\n\n From Date: " + newFromDate.Text;
            leadMessage += "\n\n To: " + newTo.Text;
            leadMessage += "\n\n From: " + newFrom2.Text;
            leadMessage += "\n\n From Date: " + newFromDate2.Text;
            leadMessage += "\n\n To: " + newTo2.Text;
            leadMessage += "\n\n From: " + newFrom3.Text;
            leadMessage += "\n\n From Date: " + newFromDate3.Text;
            leadMessage += "\n\n To: " + newTo3.Text;
            leadMessage += "\n\n Passengers: " + newPassengers.SelectedValue;
            leadMessage += "\n\n Cabin: " + newCabin.SelectedValue;

            try
            {

                string from = LeadConfiguration.MailFrom;
                string to = LeadConfiguration.ErrorLogEmail;
                string subject = "New dfg.com Lead";
                string body = leadMessage;
                Utilities.SendMail(from, to, subject, body);

            }
            catch
            {
                throw;
            }


        }
        else
        {
            string dateTime = DateTime.Now.ToLongDateString() + ", at " + DateTime.Now.ToShortTimeString();
            string leadMessage = "Lead generated on " + dateTime;
            leadMessage += "\n\n Trip: " + newTrip.SelectedValue;
            leadMessage += "\n\n Name: " + newName.Text;
            leadMessage += "\n\n Phone: " + newPhone.Text;
            leadMessage += "\n\n Email: " + newEmail.Text;
            leadMessage += "\n\n From: " + newFrom.Text;
            leadMessage += "\n\n From Date: " + newFromDate.Text;
            leadMessage += "\n\n To: " + newTo.Text;
            leadMessage += "\n\n Return Date: " + newToDate.Text;
            leadMessage += "\n\n Passengers: " + newPassengers.SelectedValue;
            leadMessage += "\n\n Cabin: " + newCabin.SelectedValue;

            try
            {

                string from = LeadConfiguration.MailFrom;
                string to = LeadConfiguration.ErrorLogEmail;
                string subject = "New dfg.com Lead";
                string body = leadMessage;
                Utilities.SendMail(from, to, subject, body);

            }
            catch
            {
                throw;
            }
        }

        string customerMessage;
        customerMessage = "Thank You, Your request has been received regarding your travel itinerary. ";
        customerMessage += "\n\n A specialist is currently working on your request and you will be contacted shortly.";
        customerMessage += "\n\n If you have any questions, comments, or concerns please contact us at sales@discountedflightguru.com or (888)375-3911.";
        customerMessage += "\n\n";
        customerMessage += "\n\n";
        customerMessage += "\n\n Best Regards,";
        customerMessage += "\n\n Discounted Flight Guru ";
        try
        {

            string customerFrom = "sales@discountedflightguru.com";
            string customerTo = newEmail.Text;
            string customerSubject = "Thank you for your inquiry at DiscountedFlightGuru.com";
            string customerBody = customerMessage;
            Utilities.SendMail(customerFrom, customerTo, customerSubject, customerBody);

        }
        catch
        {
            throw;
        }

        if ((newTrip.SelectedValue == "3") || (newTrip.SelectedValue == "1"))
        {
            newToDate.Text = "NA";
        }

        string DateSubmitted = DateTime.Now.ToLongDateString() + ", at " + DateTime.Now.ToShortTimeString();
        bool success = LeadAccess.CreateLead(newTrip.SelectedValue.ToString(), newName.Text, newPhone.Text, newEmail.Text, newFrom.Text, newFromDate.Text, newTo.Text, newToDate.Text, newPassengers.SelectedValue.ToString(), newCabin.SelectedValue.ToString(), DateSubmitted.ToString());
        // Display status message




        if (success == false)
        {
            try
            {

                string from = LeadConfiguration.MailFrom;
                string to = LeadConfiguration.ErrorLogEmail;
                string subject = "New Lead";
                string body = "leadMessage error";
                Utilities.SendMail(from, to, subject, body);

            }
            catch
            {
                throw;
            }
        }
        // statusLabel.Text = success ? "Insert successful" : "Insert failed";
        Response.Redirect("thankyou.aspx");
    }

   
}