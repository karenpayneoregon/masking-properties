using EnvironmentApplication.Models;
using Microsoft.EntityFrameworkCore;
using WebApplication1.Data;

namespace EnvironmentApplication
{
    public class Program
    {
        public static void Main(string[] args)
        {
            WebApplicationBuilder builder = WebApplication.CreateBuilder(args);
            
            builder.Services.AddRazorPages();
            
            builder.Services.Configure<ApplicationSettings>(
                builder.Configuration.GetSection(nameof(ApplicationSettings)));

            builder.WebHost.UseStaticWebAssets();

            builder.Services.AddDbContext<Context>(options =>
                options.UseSqlServer(builder.Configuration.GetConnectionString("MainConnection")));

            var app = builder.Build();


            if (!app.Environment.IsDevelopment())
            {
                app.UseExceptionHandler("/Error");
                app.UseHsts();
            }

            app.UseHttpsRedirection();
            app.UseStaticFiles();

            app.UseRouting();

            app.UseAuthorization();

            app.MapRazorPages();

            app.Run();
        }
    }
}