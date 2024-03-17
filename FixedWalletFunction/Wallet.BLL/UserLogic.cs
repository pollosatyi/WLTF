using FixedWalletFunction.DAL.Contracts;
using IUser.Bll;
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
            var userDb = new User()
            {
                FirstName = user.FirstName,
                LastName = user.LastName,
                MiddleName = user.MiddleName,
                Phone = user.Phone,
                Age = user.Age,
                Sex = user.Sex
            };

            _userRepository.Add(userDb);
        }
    }
}
