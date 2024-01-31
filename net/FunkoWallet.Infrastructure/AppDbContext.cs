using FunkoWallet.Domain.Dictionaries;
using FunkoWallet.Domain.Entities;
using Microsoft.EntityFrameworkCore;

namespace FunkoWallet.Infrastructure;

public class AppDbContext : DbContext
{
    public AppDbContext(DbContextOptions options) : base(options) { }

    public DbSet<Figure> Figure { get; set; }
    public DbSet<FigureSeries> FigureSeries { get; set; }
    public DbSet<FigureSize> FigureSize { get; set; }
    public DbSet<FigureType> FigureType { get; set; }
    public DbSet<FigureVariant> FigureVariant { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        base.OnModelCreating(modelBuilder);
        
        modelBuilder.Entity<Figure>().ToTable("Figure");
        modelBuilder.Entity<FigureSeries>().ToTable("FigureSeries", schema: "dict");
        modelBuilder.Entity<FigureSize>().ToTable("FigureSize", schema: "dict");
        modelBuilder.Entity<FigureType>().ToTable("FigureType", schema: "dict");
        modelBuilder.Entity<FigureVariant>().ToTable("FigureVariant", schema: "dict");
    }
}
