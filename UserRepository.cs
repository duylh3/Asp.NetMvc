using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ideal.Models;
using ideal.ViewModels;

namespace ideal.Repository
{
    public class UserRepository
    {
        private IdealDBEntities _db = new IdealDBEntities();

        public UserViewModel Login(LoginViewModel model)
        {
            try
            {
                var item = (from u in _db.USER_LOGIN(model.Username, model.Password)
                            select new UserViewModel()
                            {
                                UserId = u.id,
                                Username = u.Username,
                                Password = u.Password
                            }).FirstOrDefault();
                return item;
            }
            catch (Exception ex)
            {
                var Err = ex.Message;
                return null;
            }
        }
    }
}