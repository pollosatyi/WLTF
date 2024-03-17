using Wallet.Common.Entities.Enums;

namespace Wallet.Common.Entities.Users
{
    public class UserInputModel
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string MiddleName { get; set; }
        public string Phone { get; set; }
        public int Age { get; set; }
        public Sex Sex { get; set; }
    }
}
