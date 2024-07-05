using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PizzaASPWebApplication
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPuchase_Click(object sender, EventArgs e)
        {
            var toppingTotal = 0m;
            foreach (ListItem item in checkToppings.Items)
            {
                if (item.Selected)
                {
                    toppingTotal += decimal.Parse(item.Value);
                }
            }

            var pizzaSize = decimal.Parse(radPizzaSize.SelectedValue);
            var crust = decimal.Parse(radCrust.SelectedValue);
            var total = pizzaSize + crust + toppingTotal;

            if (pep.Selected && grnPep.Selected && anch.Selected || pep.Selected && redPep.Selected && onion.Selected)
            {
                total -= 2;
            }

            lblTotal.Text = $"${total}";
        }
    }
}