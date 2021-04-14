using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Design;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GitProjectManager.Persistence.EF {
  class GitProjectManagerDbContextFactory : IDesignTimeDbContextFactory<GitProjectManagerDbContext> {
    public GitProjectManagerDbContext CreateDbContext(string[] args) {
      var optionsBuilder = new DbContextOptionsBuilder<GitProjectManagerDbContext>();
      optionsBuilder.UseSqlite("Data Source =GitProjectManagerDatabase.db");

      return new GitProjectManagerDbContext(optionsBuilder.Options);
    }

  }
}
