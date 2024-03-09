using Wallet.Common.Entities;

namespace FixedWalletFunction.DAL.Contracts
{
    public interface IWalletRepository
    {
        public void Add(Amount type);
    }
}
