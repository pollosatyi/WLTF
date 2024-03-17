using Wallet.Common.Entities.Users;

namespace Wallet.Common.Entities
{
    public class Account
    {
        public List<Amount> Amounts{ get; set; }
        public string Password { get; set; }
        public string Email { get; set; }
        public User User { get; set; }
    }

}
