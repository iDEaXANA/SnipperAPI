using Microsoft.AspNetCore.Mvc;
using DotnetAPI.Data;

namespace DotnetAPI.Controllers;
[ApiController]
[Route("[controller]")]
public class SnipperController : ControllerBase
{
    DataContextDapper _dapper;
    public SnipperController(IConfiguration config)
    {
        _dapper = new DataContextDapper(config);
    }

    [HttpGet("TestConnection")]
    public DateTime TestConnection()
    {
        return _dapper.LoadDataSingle<DateTime>("SELECT GETDATE()");
    }



}