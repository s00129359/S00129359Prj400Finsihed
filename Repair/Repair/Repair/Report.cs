using System;
using System.Collections.Generic;
using System.Text;

namespace Repair
{
    public class Report
    {
        public string id { get; set; }
        public int Report_Id { get; set; }
        public int User_Id { get; set; }
        public int Customer_Id { get; set; }
        public string Equipment { get; set; }
        public string Brand { get; set; }
        public string Description { get; set; }
        public string Accessories { get; set; }
        public string Conclusion { get; set; }
        public string CompletedDate { get; set; }
        public bool Finished { get; set; }
        public decimal Cost { get; set; }
        public bool Paid { get; set; }
    }
}
