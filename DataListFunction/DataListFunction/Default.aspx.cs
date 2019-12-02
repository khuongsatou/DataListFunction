using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DataListFunction
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "x")
            {
                SqlDataSource1.DeleteParameters["username"].DefaultValue = DataList1.DataKeys[e.Item.ItemIndex].ToString();
                SqlDataSource1.Delete();
            }
            if (e.CommandName=="s")
            {
                DataList1.EditItemIndex =e.Item.ItemIndex;
                DataList1.DataBind();
            }

            if (e.CommandName =="c")
            {
                TextBox t = new TextBox();
                t = (TextBox)e.Item.FindControl("TextBox1");

                SqlDataSource1.UpdateParameters["name"].DefaultValue = t.Text;
                SqlDataSource1.UpdateParameters["username"].DefaultValue = DataList1.DataKeys[e.Item.ItemIndex].ToString();
                SqlDataSource1.Update();

                DataList1.EditItemIndex = -1;
                DataList1.DataBind();
            }

            if (e.CommandName == "s")
            {
                DataList1.EditItemIndex = -1;
                DataList1.DataBind();
            }

            if (e.CommandName == "t")
            {
                TextBox t = new TextBox();
                t = (TextBox)e.Item.FindControl("TextBox2");

                SqlDataSource1.InsertParameters["username"].DefaultValue = t.Text;
               
                SqlDataSource1.Insert();
            }


        }


    }
}