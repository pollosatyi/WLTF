using IUser.Bll;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Wallet.Common.Entities;
using Wallet.Common.Entities.User;

namespace FixedWalletFunction.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserController : ControllerBase
    {
        private readonly IUserLogic _userLogic;

        public UserController(IUserLogic userLogic)
        {
             _userLogic = userLogic;
        }


        // POST: TaskController/Create
        [HttpPost]
        public void Post([FromBody] UserInputModel user)
        {
            _userLogic.Create(user);

        }
    }
}
