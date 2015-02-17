using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ReflectionComponents.WebControlsUtilities;

public partial class controls_quoteforml : System.Web.UI.UserControl
{
    private ManagedControlParameter _managedControlParameter;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void newTrip_SelectedIndexChanged(object sender, EventArgs e)
    {
       
         _managedControlParameter = new ManagedControlParameter();

         _managedControlParameter.ManagedControls.Add(ManagedControlType.All);



         if (newTrip.Items[1].Selected)
             _managedControlParameter.MainControls.Add(returnlabel);
            _managedControlParameter.MainControls.Add(newToDate);
            _managedControlParameter.ManagedControls.Add(ManagedControlType.All);

            //Set property you want change if custom attribute (Security) is setting to correct value
            _managedControlParameter.Attributes.Add(new ManagedControlTypeAttributesValue
            {
                Attribute = "Enabled",
                AttributeNewValue = "false",
              
            });

            ManagedControls.ChangeControlsAttributesValues(_managedControlParameter);
       /*
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
        }*/
    }
   
}