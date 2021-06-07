using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Aspdotnet_Nested_Gridview
{
    public class Customer
    {
        public int CustomerID { get; set; }
        public string ContactName { get; set; }

        public string City { get; set; }


        public Customer(int Id, string name, string city)
        {
            CustomerID = Id;
            ContactName = name;
            City = city;

        }
    }
}