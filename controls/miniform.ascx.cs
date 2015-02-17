using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class controls_miniform : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        miniformpanel.Visible = true;
        LinkButton1.Visible = false;


    }


    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        miniformpanel.Visible = true;
        LinkButton1.Visible = false;

    }
}