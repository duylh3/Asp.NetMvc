﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ideal.Models;
using ideal.ViewModels;
using System.Data.Entity.Core.Objects;
using ideal.Helper;

namespace ideal.Repository
{
    public class QuestionRepository
    {
        private IdealDBEntities _db = new IdealDBEntities();

        public ListResult<QuestionViewModel> ListQuestion(int pageIndex, int pageSize, string category)
        {
            try
            {
                var totalRow = new ObjectParameter("totalRow", typeof(int));
                var list = (from l in _db.GetQuestionList(category, pageIndex, pageSize, totalRow)
                            select new QuestionViewModel()
                            {
                                Id = l.Id,
                                Question = l.Question,
                                Category = l.Category,
                                CreatedBy = l.CreatedBy
                            }).ToList();
                var pagination = new ListResult<QuestionViewModel>()
                {
                    Results = list,
                    RowCount = int.Parse(totalRow.Value.ToString())
                };

                return pagination;
            }
            catch (Exception ex)
            {
                var ErrMeg = ex.InnerException.Message + ex.Message;
                return null;
            }
        }
    }
}