using Microsoft.AspNetCore.Mvc;
using SalesApi.Models;

namespace SalesAPI.Controllers;

[ApiController]
[Route("api/[controller]")]
public class ProductsController : ControllerBase
{
    [HttpGet]
    public ActionResult<IEnumerable<Product>> GetProducts()
    {
        var products = new List<Product>
        {
            new Product
            {
                Id = 1,
                Name = "Laptop",
                Price = 15000,
                Category = "Technology",
                Stock = 10
            },
            
            new Product
            {
                Id = 2,
                Name = "Keyboard",
                Price = 800,
                Category = "Accesories",
                Stock = 25 
            },

            new Product
            {
                Id = 3,
                Name = "Monitor",
                Price = 4500,
                Category = "Technology",
                Stock = 5
            }

        };

        return Ok(products);

    }
}