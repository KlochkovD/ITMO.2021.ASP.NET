using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel;

namespace MvcCreditApp1.Models
{
    public class Credit
    {

        // ID кредита
        [DisplayName("ID кредита")]
        [Required] public virtual int CreditId { get; set; }
        // Название
        [DisplayName("Название кредита")]
        [Required] public virtual string Head { get; set; }
        // Период, на который выдается кредит
        [DisplayName("Период")]
        [Required] public virtual int Period { get; set; }
        // Максимальная сумма кредита
        [DisplayName("Максимальная сумма кредита")]
        [Required] public virtual int Sum { get; set; }
        // Процентная ставка
        [DisplayName("Ставка")]
        [Required] public virtual int Procent { get; set; }
    }

}
