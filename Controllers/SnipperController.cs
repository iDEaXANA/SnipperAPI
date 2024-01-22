using Microsoft.AspNetCore.Mvc;
using SnipperAPI.Data;
using SnipperAPI.Models;

namespace SnipperAPI.Controllers;
[ApiController]
[Route("[controller]")]
public class SnipperController : ControllerBase
{
    DataContextDapper _dapper;
    public SnipperController(IConfiguration config)
    {
        _dapper = new DataContextDapper(config);
    }

    [HttpGet("GetSnipps")]
    public IEnumerable<Snipp> GetSnipps()
    {


        string sql = @"
        SELECT [ItemId],
                [Language],
                [Code]
            FROM SnipperSchema.Snipps";

        IEnumerable<Snipp> snipps = _dapper.LoadData<Snipp>(sql);
        return snipps;
    }

}