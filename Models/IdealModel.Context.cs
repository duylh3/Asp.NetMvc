﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ideal.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class IdealDBEntities : DbContext
    {
        public IdealDBEntities()
            : base("name=IdealDBEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<tb_Category> tb_Category { get; set; }
        public virtual DbSet<tb_Question> tb_Question { get; set; }
    
        public virtual ObjectResult<GetQuestionList_Result> GetQuestionList(string category, Nullable<int> pageIndex, Nullable<int> pageSize, ObjectParameter totalRow)
        {
            var categoryParameter = category != null ?
                new ObjectParameter("Category", category) :
                new ObjectParameter("Category", typeof(string));
    
            var pageIndexParameter = pageIndex.HasValue ?
                new ObjectParameter("pageIndex", pageIndex) :
                new ObjectParameter("pageIndex", typeof(int));
    
            var pageSizeParameter = pageSize.HasValue ?
                new ObjectParameter("pageSize", pageSize) :
                new ObjectParameter("pageSize", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetQuestionList_Result>("GetQuestionList", categoryParameter, pageIndexParameter, pageSizeParameter, totalRow);
        }
    }
}
