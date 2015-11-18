using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Jeremy_Burke_CST465_Project.Code
{
    public static class UserProfileRepo
    {
        public static UserProfileObject GetUserProfile(Guid ID)
        {
            UserProfileObject Returnvalue = new UserProfileObject();
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DB_CST465"].ConnectionString);
            SqlParameter parameter1 = new SqlParameter("UserId", ID);
            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.CommandText = "dbo.UserProfile_Get";
            command.Parameters.Add(parameter1);
            command.Connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            Returnvalue.FirstName = (string)reader[1];
            Returnvalue.LastName = (string)reader[2];
            Returnvalue.Age = (string)reader[3];
            Returnvalue.PhoneNumber = (string)reader[4];
            Returnvalue.EmailAddress = (string)reader[5];
            Returnvalue.StreetAddress = (string)reader[6];
            Returnvalue.City = (string)reader[7];
            Returnvalue.State = (string)reader[8];
            Returnvalue.Zip = (string)reader[9];
            Returnvalue.profileimage = (Byte[])reader[10];
            command.Connection.Close();
            return Returnvalue;
        }
        public static void SaveUserProfile(UserProfileObject Profile)
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DB_CST465"].ConnectionString);
            SqlParameter UserId = new SqlParameter("UserId", Profile.UserID);
            SqlParameter FirstName = new SqlParameter("FirstName", Profile.FirstName);
            SqlParameter LastName = new SqlParameter("LastName", Profile.LastName);
            SqlParameter Age = new SqlParameter("Age", Profile.Age);
            SqlParameter PhoneNumber = new SqlParameter("PhoneNumber", Profile.PhoneNumber);
            SqlParameter EmailAddress = new SqlParameter("EmailAddress", Profile.EmailAddress);
            SqlParameter StreetAddress = new SqlParameter("StreetAddress", Profile.StreetAddress);
            SqlParameter City = new SqlParameter("City", Profile.City);
            SqlParameter State = new SqlParameter("State", Profile.State);
            SqlParameter ZipCode = new SqlParameter("ZipCode", Profile.Zip);
            SqlParameter ProfileImage = new SqlParameter("ProfileImage", Profile.profileimage);
            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.CommandText = "dbo.UserProfile_InsertUpdate";
            command.Parameters.Add(UserId);
            command.Parameters.Add(FirstName);
            command.Parameters.Add(LastName);
            command.Parameters.Add(Age);
            command.Parameters.Add(PhoneNumber);
            command.Parameters.Add(EmailAddress);
            command.Parameters.Add(StreetAddress);
            command.Parameters.Add(City);
            command.Parameters.Add(State);
            command.Parameters.Add(ZipCode);
            command.Parameters.Add(ProfileImage);
            command.Connection.Open();
            command.ExecuteNonQuery();
            command.Connection.Close();
        }
    }
}