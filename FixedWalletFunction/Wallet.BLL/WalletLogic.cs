using FixedWalletFunction.DAL.Contracts;
using IWallet.BLL.Contracts;
using Wallet.Common.Entities;

namespace FixedWalletFunction.BLL
{
    public class WalletLogic : IWalletLogic
    {
        private readonly IWalletRepository _walletRepository;
        public WalletLogic(IWalletRepository walletRepository)
        {
            _walletRepository = walletRepository;
        }

        public void Create(Amount amount)
        {
            _walletRepository.Add(amount);
        }
    }
}
