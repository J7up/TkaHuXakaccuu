//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TkaHuXakaccuu
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class ТканиХакасииEntities3 : DbContext
    {
        public ТканиХакасииEntities3()
            : base("name=ТканиХакасииEntities3")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<ВидыТканей> ВидыТканей { get; set; }
        public virtual DbSet<ВидыФурнитур> ВидыФурнитур { get; set; }
        public virtual DbSet<ЕдИзмерения> ЕдИзмерения { get; set; }
        public virtual DbSet<ЗаказТкани> ЗаказТкани { get; set; }
        public virtual DbSet<ЗаказУслуги> ЗаказУслуги { get; set; }
        public virtual DbSet<ЗаказФурнитуры> ЗаказФурнитуры { get; set; }
        public virtual DbSet<Клиенты> Клиенты { get; set; }
        public virtual DbSet<Материалы> Материалы { get; set; }
        public virtual DbSet<Покупка> Покупка { get; set; }
        public virtual DbSet<Производители> Производители { get; set; }
        public virtual DbSet<Ткани> Ткани { get; set; }
        public virtual DbSet<Услуги> Услуги { get; set; }
        public virtual DbSet<Фурнитура> Фурнитура { get; set; }
    }
}
