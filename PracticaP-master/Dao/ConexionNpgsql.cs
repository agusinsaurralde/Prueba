using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Npgsql;

namespace Dao
{
    public class ConexionNpgsql
    {
        private NpgsqlConnection connection;
        private NpgsqlCommand command;
        public NpgsqlDataReader reader;
        private string query;
        private static string server = "localhost";
        private static string userId = "postgres";
        private static string password = "admin";
        private static string database = "DOCENTES_DB";
        private static string port = "5432";
        private static string connectionString = "server=" + server + ";port=" + port + ";user id=" + userId +
            ";password=" + password + ";database=" + database + ";";

        public ConexionNpgsql()
        {
            this.connection = new NpgsqlConnection(connectionString);
        }
        
        public void ejecutarReader()
        {
            connection.Open();
            this.command = new NpgsqlCommand(query, connection);
            this.reader = command.ExecuteReader();
        }
        public void guardar()
        {
            connection.Open();
            this.command = new NpgsqlCommand(query, connection);
            this.command.ExecuteNonQuery();
        }
        public void setQuery(string query)
        {
            this.query = query;
        }
        public void close()
        {
            this.connection.Close();
        }
        public void closeReader()
        {
            this.reader.Close();
        }
    }
}
