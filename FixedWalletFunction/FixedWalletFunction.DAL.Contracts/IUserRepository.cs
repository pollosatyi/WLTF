using Wallet.Common.Entities.Users;

namespace FixedWalletFunction.DAL.Contracts
{
    public interface IUserRepository
    {
        public void Add(User user);
    }
}
