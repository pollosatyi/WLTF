using IWallet.BLL.Contracts;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Wallet.Common.Entities;

namespace UserWallet.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AccountsController : Controller
    {
        private readonly IWalletLogic _walletlogic;

        public AccountsController(IWalletLogic walletlogic)
        {
            _walletlogic = walletlogic;

        }



        // POST: TaskController/Create
        [HttpPost]
        public void Post([FromBody] Amount amount)
        {
            _walletlogic.Create(amount);

        }
    }
}
