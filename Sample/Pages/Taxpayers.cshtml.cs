using EnvironmentApplication.Classes;
using EnvironmentApplication.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;
using WebApplication1.Data;
using WebApplication1.Models;
#pragma warning disable CS8618

namespace EnvironmentApplication.Pages
{
    public class TaxpayersModel : PageModel
    {
        private readonly ApplicationSettings _settings;
        private readonly Context _context;

        [ViewData]
        public string Title { get; set; }

        public TaxpayersModel(Context context, IOptionsSnapshot<ApplicationSettings> settings)
        {
            _context = context;
            _settings = settings.Value;
            Title = $"{_settings.Title} Taxpayers page";
        }

        public IList<Taxpayer> Taxpayers { get;set; } = default!;

        public async Task OnGetAsync()
        {
            if (_context.Taxpayer != null)
            {
                Taxpayers = await _context.Taxpayer
                .ToListAsync();

            }
        }
    }
}
