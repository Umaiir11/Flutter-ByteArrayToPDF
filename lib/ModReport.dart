 class ModRptSerAccountLedger
{
   String Pr_FormName = "";
 String Pr_ReportName ="";
 int Pr_BranchID =1;
 String Pr_AccountDID ="";
 DateTime Pr_FromDate =DateTime.now();
 DateTime Pr_ToDate =DateTime.now();
 String Pr_City ="";
 String Pr_Address ="";
 String Pr_PrintedBy ="";

   ModRptSerAccountLedger(
      this.Pr_FormName,
      this.Pr_ReportName,
      this.Pr_BranchID,
      this.Pr_AccountDID,
      this.Pr_FromDate,
      this.Pr_ToDate,
      this.Pr_City,
      this.Pr_Address,
      this.Pr_PrintedBy);
}