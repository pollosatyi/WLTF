using Wallet.Common.Entities.User;
using Wallet.Common.Entities.Users;

namespace FixedWalletFunction.DAL.Contracts
{
    public interface IUserRepository
    {
        public void Add(UserInputModel user);
    }
}
