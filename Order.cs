using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Aspdotnet_Nested_Gridview
{
    public class Order
    {
       public int OrderId { get; set; }

       public string OrderItem { get; set; }

       public string OrderDate { get; set; }

       public int CustomerId { get; set; }

       public bool QualityOne { get; set; }

        public bool QualityTwo { get; set; }



        public Order(int id, string orderItem, string orderDate, int custId, bool quality1, bool quality2)
        {
            this.OrderId = id;
            this.OrderItem = orderItem;
            this.OrderDate = orderDate;
            this.CustomerId = custId;
            this.QualityOne = quality1;
            this.QualityTwo = quality2;
        }
    }
}