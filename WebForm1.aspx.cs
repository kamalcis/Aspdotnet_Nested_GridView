using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aspdotnet_Nested_Gridview
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Customer c1 = new Customer(1,"Tim","Dhaka");
                Customer c2 = new Customer(2, "Cook", "Khulna");
                Customer c3 = new Customer(3, "Tomas", "Sylhet");

                List<Customer> list = new List<Customer>();
                list.Add(c1);
                list.Add(c2);
                list.Add(c3);



                gvCustomers.DataSource = list;
                gvCustomers.DataBind();
            }
        }

        private static List<Order> GetData()
        {
            List<Order> orderList = new List<Order>();
            Order o1 = new Order(1, "Hard drive", "1/1/2021", 1, true, true);
            Order o2 = new Order(2, "Ram", "1/1/2021", 1, false, false);

            Order o3 = new Order(3, "Monitor", "1/1/2021", 2, true, true);
            Order o4 = new Order(4, "Casing", "1/1/2021", 2,false, false);


            Order o5 = new Order(5, "Processor", "1/1/2021", 3, true,true);
            Order o6 = new Order(6, "Keyboard", "1/1/2021", 3, true, true);


            orderList.Add(o1);
            orderList.Add(o2);
            orderList.Add(o2);
            orderList.Add(o3);
            orderList.Add(o4);
            orderList.Add(o5);
            orderList.Add(o6);

            return orderList;


        }

        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string customerId = gvCustomers.DataKeys[e.Row.RowIndex].Value.ToString();
                int customerIdNum = Convert.ToInt32(customerId);
                GridView gvOrders = e.Row.FindControl("gvOrders") as GridView;

                //gvOrders.DataSource = GetData(string.Format("select top 3 * from Orders where CustomerId='{0}'", customerId));    // Example of SQL Query

                gvOrders.DataSource = GetData().Where(o => o.CustomerId == customerIdNum).ToList<Order>();
                gvOrders.DataBind();
            }
        }


    }
}