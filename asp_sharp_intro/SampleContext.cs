using asp_sharp_intro.Models;
using System.Data.Entity;
public class SampleContext : DbContext
{
    public SampleContext()
    : base("Northwind")
    { }
    public DbSet<GuestResponse> GuestResponses { get; set; }
    public DbSet<Report> Reports { get; set; }
}
