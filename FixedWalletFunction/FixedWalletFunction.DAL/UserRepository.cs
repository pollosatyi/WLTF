using FixedWalletFunction.DAL.Contracts;
using System.Data.SqlClient;
using Wallet.Common.Entities.User;
using Wallet.Common.Entities.Users;

namespace FixedWalletFunction.DAL
{
    public class UserRepository : IUserRepository
    {
        public void Add(UserInputModel user)
        {
            string connectionString = "Data Source=DESKTOP-M2QA1DM\\SQLEXPRESS;Initial Catalog=walbase;User ID=User;Password=;Encrypt=False;Trusted_Connection=True";

            // Создание подключения
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string sqlExpression = $"INSERT INTO Wallets (rub) VALUES({user})";
                connection.Open();

                SqlCommand command = new SqlCommand(sqlExpression, connection);

                command.ExecuteNonQuery();
            }
        }
    }
}
