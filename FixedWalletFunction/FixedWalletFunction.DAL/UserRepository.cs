using System.Data.SqlClient;
using System.Data;
using Dapper;
using Wallet.Common.Entities.Users;
using FixedWalletFunction.DAL.Contracts;
using Npgsql;

namespace FixedWalletFunction.DAL
{
    public class UserRepository : IUserRepository
    {

        public void Add(User user)
        {
            string connectionString = "Data Source=DESKTOP-M2QA1DM\\SQLEXPRESS;Initial Catalog=walbase;User ID=User;Password=;Encrypt=False;Trusted_Connection=True";

            // Создание подключения
            using (IDbConnection db = new NpgsqlConnection(connectionString))
            {
                var sqlQuery = "INSERT INTO Users (FirstName,LastName,MiddleName,Phone,Age,Sex) VALUES(@FirstName, @LastName, @MiddleName, @Phone, @Age, @Sex)";
                db.Execute(sqlQuery, user);

            }
        }
    }
}
