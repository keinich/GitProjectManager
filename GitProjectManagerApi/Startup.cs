using GitProjectManager.Core.Repositories;
using GitProjectManager.Persistence.EF;
using GitProjectManager.Persistence.EF.Repositories;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Diagnostics;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.OpenApi.Models;
using System.Diagnostics;

namespace GitProjectManagerApi {

  public class Startup {
    public Startup(IConfiguration configuration) {
      Configuration = configuration;
    }

    public IConfiguration Configuration { get; }

    // This method gets called by the runtime. Use this method to add services to the container.
    public void ConfigureServices(IServiceCollection services) {

      services.AddControllers();
      services.AddSwaggerGen(c => {
        c.SwaggerDoc("v1", new OpenApiInfo { Title = "GitProjectManagerApi", Version = "v1" });
      });

      services.AddScoped<IWorkItemRepository, WorkItemRepository>();
      try {
        services.AddDbContext<GitProjectManagerDbContext>(
          x => x.UseSqlServer(Configuration.GetConnectionString("ProductionConnetion"))
        );
        services.BuildServiceProvider().GetService<GitProjectManagerDbContext>().Database.Migrate();
      }
      catch (System.Exception ex) {
        Controllers.WeatherForecastController.StartupLog = ex.Message + ex.StackTrace;
        Trace.WriteLine("Exception when adding DbContext");
      }

      //services.AddDbContext<GitProjectManagerDbContext>(
      //  x => x.UseSqlServer(Configuration.GetConnectionString("DefaultConnetion"))
      //);


    }

    // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
    public void Configure(IApplicationBuilder app, IWebHostEnvironment env) {
      if (env.IsDevelopment()) {
        app.UseDeveloperExceptionPage();
        app.UseSwagger();
        app.UseSwaggerUI(c => c.SwaggerEndpoint("/swagger/v1/swagger.json", "GitProjectManagerApi v1"));
      }

      app.UseHttpsRedirection();

      app.UseRouting();

      app.UseAuthorization();

      app.UseEndpoints(endpoints => {
        endpoints.MapControllers();
      });
    }
  }
}
