using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace api.Controllers
{
    [Route("api/[controller]")]
    public class GuidController : Controller
    {
        [HttpGet]
        public IEnumerable<Guid> Get()
        {
            return Enumerable.Range(0, 10).Select(e => Guid.NewGuid());
        }
    }
}
