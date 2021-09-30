using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebMVCR1.Models;

namespace WebMVCR1.Controllers
{
    public class MyController : Controller
    {
        public string Start(string hel)
        {

            //string res = ExeEnum();
            //string res = ExeStruct();
            //string res = StudyCsharp.SetStatus(15);
            // string res = StudyCsharp.ExeSwitch(StudyCsharp.SetStatus(15));
            string res = ExeFactorial(5);
            //string res = StudyCsharp.GetFunction(0, 9);

            return res;

        }

        public string ExeFactorial(int x)
        {
            int f;
            bool ok = StudyCsharp.Factorial(x, out f);
            if (ok)
                return String.Format("Факториал числа {0} равен {1} ",
                x, f);
            else
                return "Невозможно вычислить факториал";

        }
        public string ExeEnum()
        {
            AccountType goldAccount;
            AccountType platinumAccount;
            goldAccount = AccountType.Checking;
            platinumAccount = AccountType.Deposit;
            string res1 = String.Format("Тип банковского счета {0}",
            goldAccount);
            string res2 = String.Format("Тип банковского счета {0}",
            platinumAccount);
            string res = res1 + "<p>" + res2;
            return res;


        }
        public string ExeStruct()
        {
            BankAccount goldBankAccount;
            goldBankAccount.accType = AccountType.Checking;
            goldBankAccount.accBal = (decimal)3200.00;
            goldBankAccount.accNo = 123;
            string str = $"Номер счета {goldBankAccount.accNo}, баланс {goldBankAccount.accBal}, тип {goldBankAccount.accNo}";
            return str;
        }
    }
}