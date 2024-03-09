using FixedWalletFunction.DAL.Contracts;
using IUser.Bll;
using Wallet.Common.Entities.User;
using Wallet.Common.Entities.Users;

namespace Users.Bll
{
    public class UserLogic : IUserLogic
    {
        private readonly IUserRepository _userRepository;
        public UserLogic(IUserRepository userRepository)
        {
            _userRepository=userRepository;
        }

        public void Create(UserInputModel user)
        {
            _userRepository.Add(user);
        }
    }
}
