using GitProjectManager.Core.Model;
using GitProjectManager.Core.Repositories;
using System.Linq;

namespace GitProjectManager.Persistence.EF.Repositories {
  public class WorkItemRepository : IWorkItemRepository {

    private GitProjectManagerDbContext _Context;

    public WorkItemRepository(GitProjectManagerDbContext context) {
      _Context = context;
    }

    public IQueryable<WorkItem> GetWorkItems() {
      return _Context.WorkItems;
    }
  }
}
