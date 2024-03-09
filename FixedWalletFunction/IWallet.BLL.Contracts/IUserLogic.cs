using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Wallet.Common.Entities.User;
using Wallet.Common.Entities.Users;

namespace IUser.Bll
{
   public interface IUserLogic
    {
        public void Create(UserInputModel user);

    }
}
