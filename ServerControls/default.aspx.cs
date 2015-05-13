using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ServerControls
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if the form was not submitted clear text and enable button.
            if (!IsPostBack) {
                lblMessage.Text = "";
                btnCopyText.Enabled = true;
            }
        }

        protected void btnCopyText_Click(object sender, EventArgs e)
        {
            //copy the textbox to the label
            lblMessage.Text = txtMessage.Text;
            btnCopyText.Enabled = false;
        }

        protected void btnShowChoices_Click(object sender, EventArgs e)
        {
            //clear out the previous label text first
            lblToppings.Text = "";
            lblSize.Text = "";
            ddlSize.Visible = false;
            ddlSize.Enabled = false;
            cblToppings.Enabled = false;
            cblToppings.Visible = false;
            btnShowChoices.Visible = false;

            //loop through the list of checkboxes
            foreach(ListItem topping in cblToppings.Items){
                if (topping.Selected) {
                    lblToppings.Text += topping.Text + "<br/>";
                }
            }
            
            lblSize.Text =  ddlSize.SelectedItem.Text;
        }

        protected void addTopping() { 

        }
    }
}