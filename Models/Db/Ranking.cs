//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Models.Db
{
    using System;
    using System.Collections.Generic;
    
    public partial class Ranking
    {
        public int id { get; set; }
        public Nullable<int> product_id { get; set; }
        public Nullable<int> service_id { get; set; }
        public Nullable<int> number_of_ratings { get; set; }
        public Nullable<double> average_rate { get; set; }
    
        public virtual Product Product { get; set; }
        public virtual Service Service { get; set; }
    }
}
