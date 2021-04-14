using GitProjectManager.Core.Repositories;
using GitProjectManager.Persistence.EF;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GitProjectManagerApi.Controllers {
  [ApiController]
  [Route("[controller]")]
  public class WeatherForecastController : ControllerBase {

    private readonly IWorkItemRepository _Repo;

    private static readonly string[] Summaries = new[]
    {
            "Freezing", "Bracing", "Chilly", "Cool", "Mild", "Warm", "Balmy", "Hot", "Sweltering", "Scorching"
        };

    private readonly ILogger<WeatherForecastController> _logger;

    public WeatherForecastController(ILogger<WeatherForecastController> logger, IWorkItemRepository repo) {
      _logger = logger;
      _Repo = repo;
    }

    [HttpGet]
    public IEnumerable<WeatherForecast> Get() {
      var workItems = _Repo.GetWorkItems().ToList();

      var rng = new Random();
      return Enumerable.Range(1, 5).Select(index => new WeatherForecast {
        Date = DateTime.Now.AddDays(index),
        TemperatureC = rng.Next(-20, 55),
        Summary = Summaries[rng.Next(Summaries.Length)],
        NumberOfWorkItems = workItems.Count
      })
      .ToArray();
    }
  }
}
