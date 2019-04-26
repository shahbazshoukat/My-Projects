using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace resultScrapper
{
    public class Result
    {
        
        public int max_size;
        public String[] rollNos;
        public String session;
        public String degree;
        public String year;
        public int noOfRecords;

        public Result()
        {
            max_size = 100;
            rollNos = new String[max_size];
            session = "";
            degree = "";
            year = "";
            noOfRecords = 0;
        }

    }
}
