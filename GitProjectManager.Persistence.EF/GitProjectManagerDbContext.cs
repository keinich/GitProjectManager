using Microsoft.EntityFrameworkCore;
using GitProjectManager.Core.Model;

namespace GitProjectManager.Persistence.EF {

  public class GitProjectManagerDbContext : DbContext {
    public GitProjectManagerDbContext(DbContextOptions options) : base(options) {
    }
    public DbSet<WorkItem> WorkItems { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder) {
      //base.OnModelCreating(modelBuilder);
      modelBuilder.Entity<WorkItem>().ToTable("WorkItems");
    }
  }
}
