using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using WebApplication1.Data;
using WebApplication1.Models;

namespace EnvironmentApplication.Pages
{
    public class DetailsModel : PageModel
    {
        private readonly Context _context;
        public Taxpayer? Taxpayer { get; set; }
        public DetailsModel(Context context)
        {
            _context = context;
        }
        public async Task OnGet(int? id)
        {
            Taxpayer = await _context.Taxpayer
                .FirstOrDefaultAsync(tp => tp.Id == id);
        }

        public IActionResult OnPost()
        {
            return RedirectToPage("/Taxpayers");

        }
    }
}
