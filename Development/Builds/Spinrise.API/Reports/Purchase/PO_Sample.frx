using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Windows.Forms;
using System.Drawing;
using System.Data;
using FastReport;
using FastReport.Data;
using FastReport.Dialog;
using FastReport.Barcode;
using FastReport.Table;
using FastReport.Utils;

namespace FastReport
{
  public class PO_Sample : Report
  {
    public FastReport.Report Report;
    public FastReport.Engine.ReportEngine Engine;
    public FastReport.TextObject AddressLine;
    public FastReport.ShapeObject Box2;
    public FastReport.ShapeObject Box4;
    public FastReport.ShapeObject Box6;
    public FastReport.TextObject CitynPin;
    public FastReport.LineObject ColHdr_BotLine;
    public FastReport.LineObject ColHdr_TopLine;
    public FastReport.ChildBand ColumnHeaders;
    public FastReport.DataBand DataDetail;
    public FastReport.TextObject det_AppCost;
    public FastReport.TextObject det_CurrStock;
    public FastReport.TextObject det_ItemCode;
    public FastReport.TextObject det_ItemName;
    public FastReport.TextObject det_LPODate;
    public FastReport.TextObject det_LPORate;
    public FastReport.TextObject det_ReqDate;
    public FastReport.TextObject det_ReqQty;
    public FastReport.TextObject det_SNo;
    public FastReport.TextObject det_UOM;
    public FastReport.TextObject det_Value;
    public FastReport.ChildBand DetailMachNo;
    public FastReport.TextObject DIV_PRINTNAME;
    public FastReport.TextObject DIV_UNITNAME;
    public FastReport.TextObject EmailLine;
    public FastReport.TextObject fld_APP1DATE;
    public FastReport.TextObject fld_APP3DATE_ftr;
    public FastReport.TextObject fld_APP3DATE_hdr;
    public FastReport.TextObject fld_DEPNAME;
    public FastReport.TextObject fld_ename;
    public FastReport.TextObject fld_FinalAppUser;
    public FastReport.TextObject fld_FirstappUser;
    public FastReport.TextObject fld_prdate;
    public FastReport.TextObject fld_prno;
    public FastReport.TextObject fld_refno;
    public FastReport.TextObject fld_RequestedByName;
    public FastReport.TextObject hdr_AppCost;
    public FastReport.TextObject hdr_CurrStock;
    public FastReport.TextObject hdr_Date;
    public FastReport.TextObject hdr_ItemCode;
    public FastReport.TextObject hdr_ItemName;
    public FastReport.TextObject hdr_PrevPurch;
    public FastReport.TextObject hdr_Rate;
    public FastReport.TextObject hdr_Remarks;
    public FastReport.TextObject hdr_ReqDate;
    public FastReport.TextObject hdr_ReqQty;
    public FastReport.TextObject hdr_SNo;
    public FastReport.TextObject hdr_Unit;
    public FastReport.TextObject hdr_Value;
    public FastReport.TextObject lbl_ApprovedBy;
    public FastReport.TextObject lbl_ApprovedDate;
    public FastReport.TextObject lbl_AuthSign;
    public FastReport.TextObject lbl_Department;
    public FastReport.TextObject lbl_MachNo;
    public FastReport.TextObject lbl_PRDate;
    public FastReport.TextObject lbl_PRNo;
    public FastReport.TextObject lbl_Reference;
    public FastReport.TextObject lbl_RequestedBy;
    public FastReport.TextObject lbl_RequesterName;
    public FastReport.LineObject Line2;
    public FastReport.LineObject Line5;
    public FastReport.PictureObject Logo;
    public FastReport.TextObject mn_Code;
    public FastReport.TextObject mn_Right;
    public FastReport.TextObject mn_SNo;
    public FastReport.ReportPage Page1;
    public FastReport.PageFooterBand PageFooter1;
    public FastReport.PageHeaderBand PageHeader1;
    public FastReport.TextObject PhoneLine;
    public FastReport.LineObject PrevPurch_SubLine;
    public FastReport.TextObject PurchaseReqTitle;
    public FastReport.TextObject sep_ApprovedDate;
    public FastReport.TextObject sep_Department;
    public FastReport.TextObject sep_PRDate;
    public FastReport.TextObject sep_PRNo;
    public FastReport.TextObject sep_Reference;
    public FastReport.TextObject sep_RequesterName;
    public FastReport.TextObject Text1;
    protected override object CalcExpression(string expression, Variant Value)
    {
      if (expression == "[KSP_PurchaseReq.LPO_RATE]*[KSP_PurchaseReq.qtyind]")
        return ((Decimal)Report.GetColumnValue("KSP_PurchaseReq.LPO_RATE"))*((Decimal)Report.GetColumnValue("KSP_PurchaseReq.qtyind"));
      return null;
    }

    private SByte Abs(SByte value)
    {
      return System.Math.Abs(value);
    }

    private Int16 Abs(Int16 value)
    {
      return System.Math.Abs(value);
    }

    private Int32 Abs(Int32 value)
    {
      return System.Math.Abs(value);
    }

    private Int64 Abs(Int64 value)
    {
      return System.Math.Abs(value);
    }

    private Single Abs(Single value)
    {
      return System.Math.Abs(value);
    }

    private Double Abs(Double value)
    {
      return System.Math.Abs(value);
    }

    private Decimal Abs(Decimal value)
    {
      return System.Math.Abs(value);
    }

    private Double Acos(Double d)
    {
      return System.Math.Acos(d);
    }

    private Double Asin(Double d)
    {
      return System.Math.Asin(d);
    }

    private Double Atan(Double d)
    {
      return System.Math.Atan(d);
    }

    private Double Ceiling(Double a)
    {
      return System.Math.Ceiling(a);
    }

    private Decimal Ceiling(Decimal d)
    {
      return System.Math.Ceiling(d);
    }

    private Double Cos(Double d)
    {
      return System.Math.Cos(d);
    }

    private Double Exp(Double d)
    {
      return System.Math.Exp(d);
    }

    private Double Floor(Double d)
    {
      return System.Math.Floor(d);
    }

    private Decimal Floor(Decimal d)
    {
      return System.Math.Floor(d);
    }

    private Double Log(Double d)
    {
      return System.Math.Log(d);
    }

    private Int32 Maximum(Int32 val1, Int32 val2)
    {
      return FastReport.Functions.StdFunctions.Maximum(val1, val2);
    }

    private Int64 Maximum(Int64 val1, Int64 val2)
    {
      return FastReport.Functions.StdFunctions.Maximum(val1, val2);
    }

    private Single Maximum(Single val1, Single val2)
    {
      return FastReport.Functions.StdFunctions.Maximum(val1, val2);
    }

    private Double Maximum(Double val1, Double val2)
    {
      return FastReport.Functions.StdFunctions.Maximum(val1, val2);
    }

    private Decimal Maximum(Decimal val1, Decimal val2)
    {
      return FastReport.Functions.StdFunctions.Maximum(val1, val2);
    }

    private Int32 Minimum(Int32 val1, Int32 val2)
    {
      return FastReport.Functions.StdFunctions.Minimum(val1, val2);
    }

    private Int64 Minimum(Int64 val1, Int64 val2)
    {
      return FastReport.Functions.StdFunctions.Minimum(val1, val2);
    }

    private Single Minimum(Single val1, Single val2)
    {
      return FastReport.Functions.StdFunctions.Minimum(val1, val2);
    }

    private Double Minimum(Double val1, Double val2)
    {
      return FastReport.Functions.StdFunctions.Minimum(val1, val2);
    }

    private Decimal Minimum(Decimal val1, Decimal val2)
    {
      return FastReport.Functions.StdFunctions.Minimum(val1, val2);
    }

    private Double Round(Double a)
    {
      return System.Math.Round(a);
    }

    private Decimal Round(Decimal d)
    {
      return System.Math.Round(d);
    }

    private Double Round(Double value, Int32 digits)
    {
      return System.Math.Round(value, digits);
    }

    private Decimal Round(Decimal d, Int32 decimals)
    {
      return System.Math.Round(d, decimals);
    }

    private Double Sin(Double a)
    {
      return System.Math.Sin(a);
    }

    private Double Sqrt(Double d)
    {
      return System.Math.Sqrt(d);
    }

    private Double Tan(Double a)
    {
      return System.Math.Tan(a);
    }

    private Double Truncate(Double d)
    {
      return System.Math.Truncate(d);
    }

    private Decimal Truncate(Decimal d)
    {
      return System.Math.Truncate(d);
    }

    private Int32 Asc(Char c)
    {
      return FastReport.Functions.StdFunctions.Asc(c);
    }

    private Char Chr(Int32 i)
    {
      return FastReport.Functions.StdFunctions.Chr(i);
    }

    private Boolean Contains(String s, String value)
    {
      return FastReport.Functions.StdFunctions.Contains(s, value);
    }

    private String Insert(String s, Int32 startIndex, String value)
    {
      return FastReport.Functions.StdFunctions.Insert(s, startIndex, value);
    }

    private Int32 Length(String s)
    {
      return FastReport.Functions.StdFunctions.Length(s);
    }

    private String LowerCase(String s)
    {
      return FastReport.Functions.StdFunctions.LowerCase(s);
    }

    private String PadLeft(String s, Int32 totalWidth)
    {
      return FastReport.Functions.StdFunctions.PadLeft(s, totalWidth);
    }

    private String PadLeft(String s, Int32 totalWidth, Char paddingChar)
    {
      return FastReport.Functions.StdFunctions.PadLeft(s, totalWidth, paddingChar);
    }

    private String PadRight(String s, Int32 totalWidth)
    {
      return FastReport.Functions.StdFunctions.PadRight(s, totalWidth);
    }

    private String PadRight(String s, Int32 totalWidth, Char paddingChar)
    {
      return FastReport.Functions.StdFunctions.PadRight(s, totalWidth, paddingChar);
    }

    private String Remove(String s, Int32 startIndex)
    {
      return FastReport.Functions.StdFunctions.Remove(s, startIndex);
    }

    private String Remove(String s, Int32 startIndex, Int32 count)
    {
      return FastReport.Functions.StdFunctions.Remove(s, startIndex, count);
    }

    private String Replace(String s, String oldValue, String newValue)
    {
      return FastReport.Functions.StdFunctions.Replace(s, oldValue, newValue);
    }

    private String Substring(String s, Int32 startIndex)
    {
      return FastReport.Functions.StdFunctions.Substring(s, startIndex);
    }

    private String Substring(String s, Int32 startIndex, Int32 length)
    {
      return FastReport.Functions.StdFunctions.Substring(s, startIndex, length);
    }

    private String TitleCase(String s)
    {
      return FastReport.Functions.StdFunctions.TitleCase(s);
    }

    private String Trim(String s)
    {
      return FastReport.Functions.StdFunctions.Trim(s);
    }

    private String UpperCase(String s)
    {
      return FastReport.Functions.StdFunctions.UpperCase(s);
    }

    private DateTime AddDays(DateTime date, Double value)
    {
      return FastReport.Functions.StdFunctions.AddDays(date, value);
    }

    private DateTime AddHours(DateTime date, Double value)
    {
      return FastReport.Functions.StdFunctions.AddHours(date, value);
    }

    private DateTime AddMinutes(DateTime date, Double value)
    {
      return FastReport.Functions.StdFunctions.AddMinutes(date, value);
    }

    private DateTime AddMonths(DateTime date, Int32 value)
    {
      return FastReport.Functions.StdFunctions.AddMonths(date, value);
    }

    private DateTime AddSeconds(DateTime date, Double value)
    {
      return FastReport.Functions.StdFunctions.AddSeconds(date, value);
    }

    private DateTime AddYears(DateTime date, Int32 value)
    {
      return FastReport.Functions.StdFunctions.AddYears(date, value);
    }

    private TimeSpan DateDiff(DateTime date1, DateTime date2)
    {
      return FastReport.Functions.StdFunctions.DateDiff(date1, date2);
    }

    private DateTime DateSerial(Int32 year, Int32 month, Int32 day)
    {
      return FastReport.Functions.StdFunctions.DateSerial(year, month, day);
    }

    private Int32 Day(DateTime date)
    {
      return FastReport.Functions.StdFunctions.Day(date);
    }

    private String DayOfWeek(DateTime date)
    {
      return FastReport.Functions.StdFunctions.DayOfWeek(date);
    }

    private Int32 DayOfYear(DateTime date)
    {
      return FastReport.Functions.StdFunctions.DayOfYear(date);
    }

    private Int32 DaysInMonth(Int32 year, Int32 month)
    {
      return FastReport.Functions.StdFunctions.DaysInMonth(year, month);
    }

    private Int32 Hour(DateTime date)
    {
      return FastReport.Functions.StdFunctions.Hour(date);
    }

    private Int32 Minute(DateTime date)
    {
      return FastReport.Functions.StdFunctions.Minute(date);
    }

    private Int32 Month(DateTime date)
    {
      return FastReport.Functions.StdFunctions.Month(date);
    }

    private String MonthName(Int32 month)
    {
      return FastReport.Functions.StdFunctions.MonthName(month);
    }

    private Int32 Second(DateTime date)
    {
      return FastReport.Functions.StdFunctions.Second(date);
    }

    private Int32 WeekOfYear(DateTime date)
    {
      return FastReport.Functions.StdFunctions.WeekOfYear(date);
    }

    private Int32 Year(DateTime date)
    {
      return FastReport.Functions.StdFunctions.Year(date);
    }

    private String Format(String format, params Object[] args)
    {
      return FastReport.Functions.StdFunctions.Format(format, args);
    }

    private String FormatCurrency(Object value)
    {
      return FastReport.Functions.StdFunctions.FormatCurrency(value);
    }

    private String FormatCurrency(Object value, Int32 decimalDigits)
    {
      return FastReport.Functions.StdFunctions.FormatCurrency(value, decimalDigits);
    }

    private String FormatDateTime(DateTime value)
    {
      return FastReport.Functions.StdFunctions.FormatDateTime(value);
    }

    private String FormatDateTime(DateTime value, String format)
    {
      return FastReport.Functions.StdFunctions.FormatDateTime(value, format);
    }

    private String FormatNumber(Object value)
    {
      return FastReport.Functions.StdFunctions.FormatNumber(value);
    }

    private String FormatNumber(Object value, Int32 decimalDigits)
    {
      return FastReport.Functions.StdFunctions.FormatNumber(value, decimalDigits);
    }

    private String FormatPercent(Object value)
    {
      return FastReport.Functions.StdFunctions.FormatPercent(value);
    }

    private String FormatPercent(Object value, Int32 decimalDigits)
    {
      return FastReport.Functions.StdFunctions.FormatPercent(value, decimalDigits);
    }

    private Boolean ToBoolean(Object value)
    {
      return System.Convert.ToBoolean(value);
    }

    private Byte ToByte(Object value)
    {
      return System.Convert.ToByte(value);
    }

    private Char ToChar(Object value)
    {
      return System.Convert.ToChar(value);
    }

    private DateTime ToDateTime(Object value)
    {
      return System.Convert.ToDateTime(value);
    }

    private Decimal ToDecimal(Object value)
    {
      return System.Convert.ToDecimal(value);
    }

    private Double ToDouble(Object value)
    {
      return System.Convert.ToDouble(value);
    }

    private Int32 ToInt32(Object value)
    {
      return System.Convert.ToInt32(value);
    }

    private String ToRoman(Object value)
    {
      return FastReport.Functions.StdFunctions.ToRoman(value);
    }

    private Single ToSingle(Object value)
    {
      return System.Convert.ToSingle(value);
    }

    private String ToString(Object value)
    {
      return System.Convert.ToString(value);
    }

    private String ToWords(Object value)
    {
      return FastReport.Functions.StdFunctions.ToWords(value);
    }

    private String ToWords(Object value, Boolean decimalPartToWord)
    {
      return FastReport.Functions.StdFunctions.ToWords(value, decimalPartToWord);
    }

    private String ToWords(Object value, String currencyName)
    {
      return FastReport.Functions.StdFunctions.ToWords(value, currencyName);
    }

    private String ToWords(Object value, String currencyName, Boolean decimalPartToWord)
    {
      return FastReport.Functions.StdFunctions.ToWords(value, currencyName, decimalPartToWord);
    }

    private String ToWords(Object value, String one, String many)
    {
      return FastReport.Functions.StdFunctions.ToWords(value, one, many);
    }

    private String ToWords(Object value, String one, String many, Boolean decimalPartToWord)
    {
      return FastReport.Functions.StdFunctions.ToWords(value, one, many, decimalPartToWord);
    }

    private String ToWordsIn(Object value)
    {
      return FastReport.Functions.StdFunctions.ToWordsIn(value);
    }

    private String ToWordsIn(Object value, Boolean decimalPartToWord)
    {
      return FastReport.Functions.StdFunctions.ToWordsIn(value, decimalPartToWord);
    }

    private String ToWordsIn(Object value, String currencyName)
    {
      return FastReport.Functions.StdFunctions.ToWordsIn(value, currencyName);
    }

    private String ToWordsIn(Object value, String currencyName, Boolean decimalPartToWord)
    {
      return FastReport.Functions.StdFunctions.ToWordsIn(value, currencyName, decimalPartToWord);
    }

    private String ToWordsIn(Object value, String one, String many)
    {
      return FastReport.Functions.StdFunctions.ToWordsIn(value, one, many);
    }

    private String ToWordsIn(Object value, String one, String many, Boolean decimalPartToWord)
    {
      return FastReport.Functions.StdFunctions.ToWordsIn(value, one, many, decimalPartToWord);
    }

    private String ToWordsDe(Object value)
    {
      return FastReport.Functions.StdFunctions.ToWordsDe(value);
    }

    private String ToWordsDe(Object value, Boolean decimalPartToWord)
    {
      return FastReport.Functions.StdFunctions.ToWordsDe(value, decimalPartToWord);
    }

    private String ToWordsDe(Object value, String currencyName)
    {
      return FastReport.Functions.StdFunctions.ToWordsDe(value, currencyName);
    }

    private String ToWordsDe(Object value, String currencyName, Boolean decimalPartToWord)
    {
      return FastReport.Functions.StdFunctions.ToWordsDe(value, currencyName, decimalPartToWord);
    }

    private String ToWordsDe(Object value, String one, String many)
    {
      return FastReport.Functions.StdFunctions.ToWordsDe(value, one, many);
    }

    private String ToWordsDe(Object value, String one, String many, Boolean decimalPartToWord)
    {
      return FastReport.Functions.StdFunctions.ToWordsDe(value, one, many, decimalPartToWord);
    }

    private String ToWordsEnGb(Object value)
    {
      return FastReport.Functions.StdFunctions.ToWordsEnGb(value);
    }

    private String ToWordsEnGb(Object value, Boolean decimalPartToWord)
    {
      return FastReport.Functions.StdFunctions.ToWordsEnGb(value, decimalPartToWord);
    }

    private String ToWordsEnGb(Object value, String currencyName)
    {
      return FastReport.Functions.StdFunctions.ToWordsEnGb(value, currencyName);
    }

    private String ToWordsEnGb(Object value, String currencyName, Boolean decimalPartToWord)
    {
      return FastReport.Functions.StdFunctions.ToWordsEnGb(value, currencyName, decimalPartToWord);
    }

    private String ToWordsEnGb(Object value, String one, String many)
    {
      return FastReport.Functions.StdFunctions.ToWordsEnGb(value, one, many);
    }

    private String ToWordsEnGb(Object value, String one, String many, Boolean decimalPartToWord)
    {
      return FastReport.Functions.StdFunctions.ToWordsEnGb(value, one, many, decimalPartToWord);
    }

    private String ToWordsEs(Object value)
    {
      return FastReport.Functions.StdFunctions.ToWordsEs(value);
    }

    private String ToWordsEs(Object value, Boolean decimalPartToWord)
    {
      return FastReport.Functions.StdFunctions.ToWordsEs(value, decimalPartToWord);
    }

    private String ToWordsEs(Object value, String currencyName)
    {
      return FastReport.Functions.StdFunctions.ToWordsEs(value, currencyName);
    }

    private String ToWordsEs(Object value, String currencyName, Boolean decimalPartToWord)
    {
      return FastReport.Functions.StdFunctions.ToWordsEs(value, currencyName, decimalPartToWord);
    }

    private String ToWordsEs(Object value, String one, String many)
    {
      return FastReport.Functions.StdFunctions.ToWordsEs(value, one, many);
    }

    private String ToWordsEs(Object value, String one, String many, Boolean decimalPartToWord)
    {
      return FastReport.Functions.StdFunctions.ToWordsEs(value, one, many, decimalPartToWord);
    }

    private String ToWordsFr(Object value)
    {
      return FastReport.Functions.StdFunctions.ToWordsFr(value);
    }

    private String ToWordsFr(Object value, Boolean decimalPartToWord)
    {
      return FastReport.Functions.StdFunctions.ToWordsFr(value, decimalPartToWord);
    }

    private String ToWordsFr(Object value, String currencyName)
    {
      return FastReport.Functions.StdFunctions.ToWordsFr(value, currencyName);
    }

    private String ToWordsFr(Object value, String currencyName, Boolean decimalPartToWord)
    {
      return FastReport.Functions.StdFunctions.ToWordsFr(value, currencyName, decimalPartToWord);
    }

    private String ToWordsFr(Object value, String one, String many)
    {
      return FastReport.Functions.StdFunctions.ToWordsFr(value, one, many);
    }

    private String ToWordsFr(Object value, String one, String many, Boolean decimalPartToWord)
    {
      return FastReport.Functions.StdFunctions.ToWordsFr(value, one, many, decimalPartToWord);
    }

    private String ToWordsNl(Object value)
    {
      return FastReport.Functions.StdFunctions.ToWordsNl(value);
    }

    private String ToWordsNl(Object value, Boolean decimalPartToWord)
    {
      return FastReport.Functions.StdFunctions.ToWordsNl(value, decimalPartToWord);
    }

    private String ToWordsNl(Object value, String currencyName)
    {
      return FastReport.Functions.StdFunctions.ToWordsNl(value, currencyName);
    }

    private String ToWordsNl(Object value, String currencyName, Boolean decimalPartToWord)
    {
      return FastReport.Functions.StdFunctions.ToWordsNl(value, currencyName, decimalPartToWord);
    }

    private String ToWordsNl(Object value, String one, String many)
    {
      return FastReport.Functions.StdFunctions.ToWordsNl(value, one, many);
    }

    private String ToWordsNl(Object value, String one, String many, Boolean decimalPartToWord)
    {
      return FastReport.Functions.StdFunctions.ToWordsNl(value, one, many, decimalPartToWord);
    }

    private String ToWordsRu(Object value)
    {
      return FastReport.Functions.StdFunctions.ToWordsRu(value);
    }

    private String ToWordsRu(Object value, Boolean decimalPartToWord)
    {
      return FastReport.Functions.StdFunctions.ToWordsRu(value, decimalPartToWord);
    }

    private String ToWordsRu(Object value, String currencyName)
    {
      return FastReport.Functions.StdFunctions.ToWordsRu(value, currencyName);
    }

    private String ToWordsRu(Object value, String currencyName, Boolean decimalPartToWord)
    {
      return FastReport.Functions.StdFunctions.ToWordsRu(value, currencyName, decimalPartToWord);
    }

    private String ToWordsRu(Object value, Boolean male, String one, String two, String many)
    {
      return FastReport.Functions.StdFunctions.ToWordsRu(value, male, one, two, many);
    }

    private String ToWordsRu(Object value, Boolean male, String one, String two, String many, Boolean decimalPartToWord)
    {
      return FastReport.Functions.StdFunctions.ToWordsRu(value, male, one, two, many, decimalPartToWord);
    }

    private String ToWordsUkr(Object value)
    {
      return FastReport.Functions.StdFunctions.ToWordsUkr(value);
    }

    private String ToWordsUkr(Object value, Boolean decimalPartToWord)
    {
      return FastReport.Functions.StdFunctions.ToWordsUkr(value, decimalPartToWord);
    }

    private String ToWordsUkr(Object value, String currencyName)
    {
      return FastReport.Functions.StdFunctions.ToWordsUkr(value, currencyName);
    }

    private String ToWordsUkr(Object value, String currencyName, Boolean decimalPartToWord)
    {
      return FastReport.Functions.StdFunctions.ToWordsUkr(value, currencyName, decimalPartToWord);
    }

    private String ToWordsUkr(Object value, Boolean male, String one, String two, String many)
    {
      return FastReport.Functions.StdFunctions.ToWordsUkr(value, male, one, two, many);
    }

    private String ToWordsUkr(Object value, Boolean male, String one, String two, String many, Boolean decimalPartToWord)
    {
      return FastReport.Functions.StdFunctions.ToWordsUkr(value, male, one, two, many, decimalPartToWord);
    }

    private String ToWordsSp(Object value)
    {
      return FastReport.Functions.StdFunctions.ToWordsSp(value);
    }

    private String ToWordsSp(Object value, Boolean decimalPartToWord)
    {
      return FastReport.Functions.StdFunctions.ToWordsSp(value, decimalPartToWord);
    }

    private String ToWordsSp(Object value, String currencyName)
    {
      return FastReport.Functions.StdFunctions.ToWordsSp(value, currencyName);
    }

    private String ToWordsSp(Object value, String currencyName, Boolean decimalPartToWord)
    {
      return FastReport.Functions.StdFunctions.ToWordsSp(value, currencyName, decimalPartToWord);
    }

    private String ToWordsSp(Object value, String one, String many)
    {
      return FastReport.Functions.StdFunctions.ToWordsSp(value, one, many);
    }

    private String ToWordsSp(Object value, String one, String many, Boolean decimalPartToWord)
    {
      return FastReport.Functions.StdFunctions.ToWordsSp(value, one, many, decimalPartToWord);
    }

    private String ToWordsPersian(Object value)
    {
      return FastReport.Functions.StdFunctions.ToWordsPersian(value);
    }

    private String ToWordsPersian(Object value, Boolean decimalPartToWord)
    {
      return FastReport.Functions.StdFunctions.ToWordsPersian(value, decimalPartToWord);
    }

    private String ToWordsPersian(Object value, String currencyName)
    {
      return FastReport.Functions.StdFunctions.ToWordsPersian(value, currencyName);
    }

    private String ToWordsPersian(Object value, String currencyName, Boolean decimalPartToWord)
    {
      return FastReport.Functions.StdFunctions.ToWordsPersian(value, currencyName, decimalPartToWord);
    }

    private String ToWordsPersian(Object value, String one, String many)
    {
      return FastReport.Functions.StdFunctions.ToWordsPersian(value, one, many);
    }

    private String ToWordsPersian(Object value, String one, String many, Boolean decimalPartToWord)
    {
      return FastReport.Functions.StdFunctions.ToWordsPersian(value, one, many, decimalPartToWord);
    }

    private String ToWordsPl(Object value)
    {
      return FastReport.Functions.StdFunctions.ToWordsPl(value);
    }

    private String ToWordsPl(Object value, Boolean decimalPartToWord)
    {
      return FastReport.Functions.StdFunctions.ToWordsPl(value, decimalPartToWord);
    }

    private String ToWordsPl(Object value, String currencyName)
    {
      return FastReport.Functions.StdFunctions.ToWordsPl(value, currencyName);
    }

    private String ToWordsPl(Object value, String currencyName, Boolean decimalPartToWord)
    {
      return FastReport.Functions.StdFunctions.ToWordsPl(value, currencyName, decimalPartToWord);
    }

    private String ToWordsPl(Object value, String one, String many)
    {
      return FastReport.Functions.StdFunctions.ToWordsPl(value, one, many);
    }

    private String ToWordsPl(Object value, String one, String many, Boolean decimalPartToWord)
    {
      return FastReport.Functions.StdFunctions.ToWordsPl(value, one, many, decimalPartToWord);
    }

    private String ToLetters(Object value)
    {
      return FastReport.Functions.StdFunctions.ToLetters(value);
    }

    private String ToLetters(Object value, Boolean isUpper)
    {
      return FastReport.Functions.StdFunctions.ToLetters(value, isUpper);
    }

    private String ToLettersRu(Object value)
    {
      return FastReport.Functions.StdFunctions.ToLettersRu(value);
    }

    private String ToLettersRu(Object value, Boolean isUpper)
    {
      return FastReport.Functions.StdFunctions.ToLettersRu(value, isUpper);
    }

    private Object Choose(Double index, params Object[] choice)
    {
      return FastReport.Functions.StdFunctions.Choose(index, choice);
    }

    private Object IIf(Boolean expression, Object truePart, Object falsePart)
    {
      return FastReport.Functions.StdFunctions.IIf(expression, truePart, falsePart);
    }

    private Object Switch(params Object[] expressions)
    {
      return FastReport.Functions.StdFunctions.Switch(expressions);
    }

    private Boolean IsNull(String name)
    {
      return FastReport.Functions.StdFunctions.IsNull(Report, name);
    }

    private Object IfNull(Object expression, Object defaultValue)
    {
      return FastReport.Functions.StdFunctions.IfNull(expression, defaultValue);
    }

    private void InitializeComponent()
    {
      string reportString = 
        "﻿<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<Report ScriptLanguage=\"CSharp\" ReportI" +
        "nfo.Created=\"2026-04-03\" ReportInfo.Modified=\"04/10/2026 10:51:33\" ReportInfo.Cr" +
        "eatorVersion=\"2026.1.0.0\">\r\n  <Dictionary>\r\n    <TableDataSource Name=\"KSP_Purch" +
        "aseReq\" ReferenceName=\"KSP_PurchaseReq\" DataType=\"System.Int32\" Enabled=\"true\">\r" +
        "\n      <Column Name=\"prno\" DataType=\"System.Decimal\"/>\r\n      <Column Name=\"prda" +
        "te\" DataType=\"System.DateTime\"/>\r\n      <Column Name=\"refno\" DataType=\"System.St" +
        "ring\"/>\r\n      <Column Name=\"APP1DATE\" DataType=\"System.DateTime\"/>\r\n      <Colu" +
        "mn Name=\"APP3DATE\" DataType=\"System.DateTime\"/>\r\n      <Column Name=\"qtyind\" Dat" +
        "aType=\"System.Decimal\"/>\r\n      <Column Name=\"reqddate\" DataType=\"System.DateTim" +
        "e\"/>\r\n      <Column Name=\"remarks\" DataType=\"System.String\"/>\r\n      <Column Nam" +
        "e=\"curstock\" DataType=\"System.Decimal\"/>\r\n      <Column Name=\"LPO_RATE\" DataType" +
        "=\"System.Decimal\"/>\r\n      <Column Name=\"LPO_DATE\" DataType=\"System.DateTime\"/>\r" +
        "\n      <Column Name=\"FirstappUser\" DataType=\"System.String\"/>\r\n      <Column Nam";
      reportString += "e=\"FinalAppUser\" DataType=\"System.String\"/>\r\n      <Column Name=\"DEPNAME\" DataTy" +
        "pe=\"System.String\"/>\r\n      <Column Name=\"ename\" DataType=\"System.String\"/>\r\n   " +
        "   <Column Name=\"ITEMCODE\" DataType=\"System.String\"/>\r\n      <Column Name=\"ITEMN" +
        "AME\" DataType=\"System.String\"/>\r\n      <Column Name=\"ITEMSPEC1\" DataType=\"System" +
        ".String\"/>\r\n      <Column Name=\"ITEMSPEC2\" DataType=\"System.String\"/>\r\n      <Co" +
        "lumn Name=\"ITEMSPEC3\" DataType=\"System.String\"/>\r\n      <Column Name=\"UOM\" DataT" +
        "ype=\"System.String\"/>\r\n      <Column Name=\"CATLNO\" DataType=\"System.String\"/>\r\n " +
        "     <Column Name=\"DRAWNO\" DataType=\"System.String\"/>\r\n      <Column Name=\"MAC_N" +
        "O\" DataType=\"System.String\"/>\r\n      <Column Name=\"ADD1\" DataType=\"System.String" +
        "\"/>\r\n      <Column Name=\"ADD2\" DataType=\"System.String\"/>\r\n      <Column Name=\"A" +
        "DD3\" DataType=\"System.String\"/>\r\n      <Column Name=\"CITY\" DataType=\"System.Stri" +
        "ng\"/>\r\n      <Column Name=\"PINCODE\" DataType=\"System.String\"/>\r\n      <Column Na";
      reportString += "me=\"PHONE1\" DataType=\"System.String\"/>\r\n      <Column Name=\"EMAIL\" DataType=\"Sys" +
        "tem.String\"/>\r\n      <Column Name=\"STATENAME\" DataType=\"System.String\"/>\r\n      " +
        "<Column Name=\"DIV_PRINTNAME\" DataType=\"System.String\"/>\r\n      <Column Name=\"DIV" +
        "_UNITNAME\" DataType=\"System.String\"/>\r\n      <Column Name=\"DIV_LOGO\" DataType=\"S" +
        "ystem.Byte[]\"/>\r\n      <Column Name=\"APPCOST\" DataType=\"System.Decimal\"/>\r\n     " +
        " <Column Name=\"Column\" Alias=\"Value\" DataType=\"System.Int32\" Calculated=\"true\" E" +
        "xpression=\"[KSP_PurchaseReq.LPO_RATE]*[KSP_PurchaseReq.qtyind]\"/>\r\n    </TableDa" +
        "taSource>\r\n  </Dictionary>\r\n  <ReportPage Name=\"Page1\" Landscape=\"true\" PaperWid" +
        "th=\"297\" PaperHeight=\"210\" LeftMargin=\"6.3\" TopMargin=\"6.3\" RightMargin=\"6.3\" Bo" +
        "ttomMargin=\"6.3\" Guides=\"1067.85,1067.85,1067.85\" Watermark.Font=\"Arial, 60pt\">\r" +
        "\n    <PageHeaderBand Name=\"PageHeader1\" Width=\"1075.03\" Height=\"233.53\">\r\n      " +
        "<ShapeObject Name=\"Box2\" Left=\"8\" Top=\"3\" Width=\"1059.85\" Height=\"115.67\" Border";
      reportString += ".Width=\"1.5\" Fill.Color=\"White\"/>\r\n      <ShapeObject Name=\"Box6\" Left=\"8\" Top=\"" +
        "120\" Width=\"1059.85\" Height=\"112\" Border.Width=\"1.5\" Fill.Color=\"White\"/>\r\n     " +
        " <LineObject Name=\"Line2\" Left=\"8\" Top=\"150.13\" Width=\"1059.85\" Border.Width=\"1." +
        "5\"/>\r\n      <LineObject Name=\"Line5\" Left=\"543\" Top=\"151\" Height=\"81\" Border.Wid" +
        "th=\"1.5\"/>\r\n      <PictureObject Name=\"Logo\" Left=\"16\" Top=\"8\" Width=\"176\" Heigh" +
        "t=\"80\" ImageFormat=\"Png\" Image=\"iVBORw0KGgoAAAANSUhEUgAAAKcAAAAyCAYAAAA5vcscAAAA" +
        "BGdBTUEAALGPC/xhBQAAAAlwSFlzAAALDAAACwwBP0AiyAAAACV0RVh0U29mdHdhcmUATWFjcm9tZWRp" +
        "YSBGaXJld29ya3MgTVggMjAwNId2rM8AAAtxSURBVHhe7Zp7bFTHFcYJtJWChIREg1QkJCokqkSBIKVB" +
        "RWqF1Vakf9gqhj/CYlJKUhuUQCLspA2lxW4KRIrsRClJVAKSqcE2GAjENhhowI4xD2MbYQe/APPyC/z2" +
        "+rVee316v9kZe3w9u3vveuVs2/mkT7v3zJm5wP1x5nF3GhFpa4ellUFt7XCwMqitHQ5WBrW1w8HKoLZ2" +
        "OFgZ1NYOB5sDWlrhovCCc9++ffTiiy9q/5+bS8OpHX7mCh2cQ+5+elSZR8NDgzxiXxpObZgrdHB2t9ym" +
        "4qzN1NH0LY/Yl4ZTG+YKHZzNdwqo8GA0NdWe5xH70nBqw1zBw3mjrooOnD/Gr4ic7ffpRu4Ocrbe5RGi";
      reportString += "f108RVX1dfwqsDSc2jBX8HD+8/xR+t7aFyj1wkkeIXL1dxONjLDvmZfO0PcdS2lvXga7tiINpzbMFTyc" +
        "eTcK6am1S+il7Q5qdXaymKfNWyW7ep20InEDa88sOsNiVqTh1Ia5rMPp6Wkhd1MFjQy72XVLVzstfWcN" +
        "LXjzZWrubCd6Uk59n/6M6HE5tXZ30U/ejqQfv/kbqm97zPJHPMPUbUz5rr4Odq2ShlMb5rIO51B9CfUm" +
        "LyJX3nYGGnTzXjUdvOid1j0Fe8i1+xkaPvsndp164UsqrCxl30dGPHT76n4qOryeuh5Xs5hKvuDMyMig" +
        "srIyZofDocxJSUkZzSkoKKCIiAhlXlRU1GgenJCQoMyTbeX+vpwQu5ByPp9DjRd+QFRu/BNzl2XNYnFV" +
        "HzjiF0sp6a0FVHBw9ri+tTkzWb+4mEXKfrIzkuey+wQycnEvVZs/Y3zzPWU/u9JBi6LiaP7vU9jn0uXq" +
        "Z2I2l43K2d9Fg19E0ODuueSuPMWjY3JlOsi964fkOrSaR8bUcv8qFaZGU+mXW8ntcvLoRPmCs7TUCzkU" +
        "Gxs7oT0uLo63euUPINxDVn5+vjJPdqD7qwy4So/OGgekyqq+ANoMs8oYH/dRjQFbuT+M3H3vz1O2+TPG" +
        "N98TAP4obh/N2OtknpVYyj6nGf/s8JyEHFocETWhn2wue2vO4bv5NPD5cnJd/oQ6e3toaGiItxhwZsQY" +
        "cM4xIF3HIwbQRoUdGXBSfdUZunY0ltoeFvMWtYKBExXS6RwDPjExcVy72Y2NjTxzTKimqlzhYOBEhZMf" +
        "ZH7qbAYAnG5UHNFu7ocKJveDAUG2US3xaYYW4/gCVIYTebhWGbmJxn3NcfnvgPua2/H3kO+3cE0CA3Hm" +
        "nlpWKVVtABSfqKpyu2yuwHDebX5ER4xNTU3DPXbt6aonl/MJvXFgD0V+8Aa18c3QUM1Z6t+7jNy3+DRv" +
        "VMiBY6/R4Ol3yT3QRf3dTSxeZ4x3svgCG9esYOCsra3lLUTZ2dnj2syWKyymfqHk5GRlvrBdOOP/sHD0";
      reportString += "oTqvziDHqueUebHrxk/NmKpFPxhAR728eFwOjMqKcUUeQDHnwIiLHPO9rBh9RH/8p1LlCC9wJI2C52v6" +
        "BrCigvrL4woMZ05JPj0d81OaFxdBOzM/5VGiX73/Ok1fu5i27N/NI8bass/YGJH3KMn19d9pcNczNJi2" +
        "il1DO9I/YePMfHUZnTIANcsunOnp6TxKLEfuozLgFcLUL4RqqsoXtgunPEWi4qlyVJZh8gWcsCP62dFc" +
        "WLUGnSo4ZeiwvlTlCM/eXjCWu0FdFLgCw9na3UG//Ntr9JQB4nTHEtr/7+PGBmeENn72F5pmxOZv/jVV" +
        "86ra3f6QfXo6HpDrs5fIvduY5k9tYbG0b3IMmJewcSISN7Ldvll24ExKSuIRL1wrVqyY0E+2PP2j2iIm" +
        "V09/69TJwInqp8ox2wybqmKajY2Rv/tMFZxYVwrgAq0nsR4VueinyuGytuZsaH1Cr3z0Dj0fH027jxuj" +
        "GsURh+zTHS/QDAO48rpqGmqtoqI0B7Xg3XrbHXLtmWdUzrk0VJ7Fxvg4N42eT1jFxqlv8R4vmWUVToAk" +
        "QMOnlR001qJC2NkjJgPub0lgF05M4+KhwinvzVfmyZaB9reLl21eBpjbpwJOwChgg1U5suUq6yufyz+c" +
        "TqMS9nbW8yuidmcX9Q70s+8u9yCt+/hdWvbeOnL29NK9bz6kotTfUsXXH+BQkwaPxNBAZgyNuL35vQN9" +
        "rL9Qb2cjdbd5K66QFTjj4+PHrTNxrepjtjyGvAGSIZfzZduFE0YlEw8WxuYCmx1VLiyDZAVmYfke5mo7" +
        "FXAuXBMfEDbZIYPzTkk6XU5/lcrP7qSOhhs8OiYAWtfcYGx4uun6sU0GnKvYrnygv5tGep6QZ7CPZ46p" +
        "s6mcKvIS6UrGBqq+fIBHvbICZ01NDf8WeCMjDBiFMJXLbTk5ObzF904/GDhX/HzpBEBhQBpofWjlDFNY" +
        "HtsMoDwm7qs6q/T3H8YKnPOkadqusSlSjcnlH86B3jaqvJhCl1LX0LWsTeRiGx7vL5A6mm6x7xCqa/GR";
      reportString += "1428VXTV+Oxpv89bDBgfV1HLg+vsu6u/k66f2GLkRVPlhQ+p39j1y7ICp1w1xdoxkDGuEKZyuQ2H8EK+" +
        "zjyDgVMYRzSqM0vzRilYOJsujo3tD05f9reWDAbORZGxlrx0ue89AlfgNadn2E2dzZXU0VhhfPf+kPj+" +
        "zeNGRf0dNVSeZtfDw0NUdvJtBmfJia005B5g8caa83Tl8Hp6VPEVu0Z//N4T42Fcs6zAuW3bNlvHR7B8" +
        "tql6cySmdkjVPhk4YVRRFaTyJkYGCUdFcn9/lseLXOl7Wsd/BgBmthlo2cHAqcqxay5rGyKz8PqyrvQQ" +
        "q6j3yzJZDCBey9xoAJvLrh/cPEGFB1dTTeE/RqEOJCtwAg55QwSZq6Fs89ujQFItFSYLp2w8ZPHAYUCL" +
        "OOARsUCvBYWxxpTHMrfLcPqD0JeDgTPQbt2KuYKDU+iuASgArL/lPT/s62pmn41VZw1wV1OVASbeq1uV" +
        "VTgRw0ZIlq8du3y2aUWqpUIo4YRlQAEQYoBUxDBVm/uojI2T6PNdHSVhipbhXODw/4bOirkmByd0+8p+" +
        "unRwDT00KqV7sJ8effuVcb2aKs7vIo/HOpiQHThh+RAeldT8GtL8ahPj+7KcZwY91HDKD13AialffusT" +
        "aMeOV5Y918byRQWWPRVwwuK1JIxXl6ocO+aaPJwezxDdPL3D2KlHU1l2PKuYJSffMkDt5RnWBUhUf1h/" +
        "cJg3SPKaUT7bDPQDD7nCAnq5zS6c2ND4+0GGqnKa47CvnTTGrs19ejQPO3FV3lTBaZ7afb35sWquycMJ" +
        "tTeU05VDDrYhunI4ZtxO3o6CgTMyMnJc1ZM3SHK/QD8IwbhCGE9uk8fB+HLFlS0qNx4kqiAO07G5Aax4" +
        "A4RPrCfFA4fNFU/+sQUsjnvQV/SXK6a/d/dTBSd23qiYMqBzt2b4fHeOdSl+nYQzUlU7V2jgxPR9I/uP" +
        "BpzRVJmfzKP2hQes+sMGqlzm9acARVag15uwvKuXD/fl+/uT+LOZK6Avq967+zofVdkfmPBUwQmrAMV0";
      reportString += "DwjxylJY5Pib/rlCAydUVfARq5z3StJ4xL6ChRNGX1nnzp3j36z9ZhOW17ByH7tw4qH6AwzVUbVGlI12" +
        "cxUVxpEUYAHIqr7CUwknDEAxxctrULMBZaBNE1fo4KzmcN659gWP2JcvOP+bjcqGhywcCCizkS/391cp" +
        "w8nPrXSwtSdghQEkYqpcs7lCP62X541tQuzqfxFObfvmCg2cLQ+K6XLaK6xyXk1fT10tYztoO9JwasNc" +
        "k4ezs7mKrmdtZlUTb4zweTMvidyKH30EkoZTG+aaPJy3i9OpKHMTlebupJLcv1JJzp+pKGsrNdy5xDOs" +
        "S8OpDXOFbkMUCmk4tWEuDad2+JlLw6kdfuYKLzi1tCRNgFNbO2ysDGprh4OVQW3tcLAyqK0dDlYGtbXD" +
        "wcqgtnY4WBnU1v7uTdP+A4IFwY/BKmiEAAAAAElFTkSuQmCC\"/>\r\n      <TextObject Name=\"DIV" +
        "_PRINTNAME\" Left=\"248\" Top=\"8\" Width=\"728\" Height=\"24\" CanGrow=\"true\" Text=\"[KSP" +
        "_PurchaseReq.DIV_PRINTNAME]\" HorzAlign=\"Center\" Font=\"Tahoma, 14pt, style=Bold\" " +
        "TextFill.Color=\"Navy\"/>\r\n      <TextObject Name=\"DIV_UNITNAME\" Left=\"248\" Top=\"3" +
        "2\" Width=\"728\" Height=\"13\" CanGrow=\"true\" Text=\"[KSP_PurchaseReq.DIV_UNITNAME]\" " +
        "HorzAlign=\"Center\" Font=\"Tahoma, 8pt, style=Bold\" TextFill.Color=\"Navy\"/>\r\n     " +
        " <TextObject Name=\"AddressLine\" Left=\"248\" Top=\"48\" Width=\"728\" Height=\"15.47\" T" +
        "ext=\"[KSP_PurchaseReq.ADD1]\" HorzAlign=\"Center\" Font=\"Tahoma, 8pt\"/>\r\n      <Tex";
      reportString += "tObject Name=\"CitynPin\" Left=\"248\" Top=\"64\" Width=\"728\" Height=\"15\" Text=\"[KSP_P" +
        "urchaseReq.CITY]\" HorzAlign=\"Center\" Font=\"Tahoma, 8pt\"/>\r\n      <TextObject Nam" +
        "e=\"PhoneLine\" Left=\"248\" Top=\"80\" Width=\"728\" Height=\"15.47\" Text=\"[KSP_Purchase" +
        "Req.PHONE1]\" HorzAlign=\"Center\" Font=\"Tahoma, 8pt\"/>\r\n      <TextObject Name=\"Em" +
        "ailLine\" Left=\"248\" Top=\"96\" Width=\"728\" Height=\"17.33\" Text=\"[KSP_PurchaseReq.E" +
        "MAIL]\" HorzAlign=\"Center\" Font=\"Tahoma, 8pt\"/>\r\n      <TextObject Name=\"Purchase" +
        "ReqTitle\" Left=\"456\" Top=\"128\" Width=\"197.73\" Height=\"19\" Text=\"Purchase Requisi" +
        "tion\" HorzAlign=\"Center\" Font=\"Tahoma, 11pt, style=Bold\" TextFill.Color=\"Maroon\"" +
        "/>\r\n      <TextObject Name=\"lbl_RequesterName\" Left=\"40\" Top=\"160\" Width=\"129.33" +
        "\" Height=\"16\" Text=\"Requester Name\" Font=\"Tahoma, 10pt, style=Bold\"/>\r\n      <Te" +
        "xtObject Name=\"sep_RequesterName\" Left=\"168\" Top=\"160\" Width=\"8\" Height=\"16\" Tex" +
        "t=\":\" HorzAlign=\"Center\" Font=\"Cambria, 8pt, style=Bold\"/>\r\n      <TextObject Na";
      reportString += "me=\"fld_ename\" Left=\"184\" Top=\"160\" Width=\"328\" Height=\"15.07\" Text=\"[KSP_Purcha" +
        "seReq.ename]\" Font=\"Tahoma, 10pt, style=Bold\"/>\r\n      <TextObject Name=\"lbl_Dep" +
        "artment\" Left=\"40\" Top=\"184\" Width=\"129.33\" Height=\"16.33\" Text=\"Department\" Fon" +
        "t=\"Tahoma, 10pt, style=Bold\"/>\r\n      <TextObject Name=\"sep_Department\" Left=\"16" +
        "8\" Top=\"184\" Width=\"8\" Height=\"16\" Text=\":\" HorzAlign=\"Center\" Font=\"Cambria, 8p" +
        "t, style=Bold\"/>\r\n      <TextObject Name=\"fld_DEPNAME\" Left=\"184\" Top=\"184\" Widt" +
        "h=\"328\" Height=\"15.07\" Text=\"[KSP_PurchaseReq.DEPNAME]\" Font=\"Tahoma, 10pt, styl" +
        "e=Bold\"/>\r\n      <TextObject Name=\"lbl_Reference\" Left=\"40\" Top=\"208\" Width=\"129" +
        ".33\" Height=\"16.33\" Text=\"Reference\" Font=\"Tahoma, 10pt, style=Bold\"/>\r\n      <T" +
        "extObject Name=\"sep_Reference\" Left=\"168\" Top=\"208\" Width=\"8\" Height=\"16\" Text=\"" +
        ":\" HorzAlign=\"Center\" Font=\"Cambria, 8pt, style=Bold\"/>\r\n      <TextObject Name=" +
        "\"fld_refno\" Left=\"184\" Top=\"208\" Width=\"328\" Height=\"15.07\" Text=\"[KSP_PurchaseR";
      reportString += "eq.refno]\" Font=\"Tahoma, 10pt, style=Bold\"/>\r\n      <TextObject Name=\"lbl_PRNo\" " +
        "Left=\"584\" Top=\"160\" Width=\"111\" Height=\"16\" Text=\"PR.No.\" Font=\"Tahoma, 10pt, s" +
        "tyle=Bold\"/>\r\n      <TextObject Name=\"sep_PRNo\" Left=\"712\" Top=\"160\" Width=\"8\" H" +
        "eight=\"16\" Text=\":\" Font=\"Cambria, 8pt, style=Bold\"/>\r\n      <TextObject Name=\"f" +
        "ld_prno\" Left=\"736\" Top=\"160\" Width=\"155.4\" Height=\"16\" Text=\"[KSP_PurchaseReq.p" +
        "rno]\" Font=\"Tahoma, 10pt, style=Bold\"/>\r\n      <TextObject Name=\"lbl_PRDate\" Lef" +
        "t=\"584\" Top=\"184\" Width=\"111\" Height=\"16\" Text=\"PR.Date\" Font=\"Tahoma, 10pt, sty" +
        "le=Bold\"/>\r\n      <TextObject Name=\"sep_PRDate\" Left=\"712\" Top=\"184\" Width=\"8\" H" +
        "eight=\"16\" Text=\":\" Font=\"Cambria, 8pt, style=Bold\"/>\r\n      <TextObject Name=\"f" +
        "ld_prdate\" Left=\"736\" Top=\"184\" Width=\"155.4\" Height=\"16\" Text=\"[KSP_PurchaseReq" +
        ".prdate]\" Format=\"Date\" Format.Format=\"dd/MM/yyyy\" Font=\"Tahoma, 10pt, style=Bol" +
        "d\"/>\r\n      <TextObject Name=\"lbl_ApprovedDate\" Left=\"584\" Top=\"208\" Width=\"111\"";
      reportString += " Height=\"16\" Text=\"Approved Date\" Font=\"Tahoma, 10pt, style=Bold\"/>\r\n      <Text" +
        "Object Name=\"sep_ApprovedDate\" Left=\"712\" Top=\"208\" Width=\"8\" Height=\"16\" Text=\"" +
        ":\" Font=\"Cambria, 8pt, style=Bold\"/>\r\n      <TextObject Name=\"fld_APP3DATE_hdr\" " +
        "Left=\"736\" Top=\"208\" Width=\"194.27\" Height=\"16\" Text=\"[KSP_PurchaseReq.APP3DATE]" +
        "\" Format=\"Date\" Format.Format=\"dd/MM/yyyy\" Font=\"Tahoma, 10pt, style=Bold\"/>\r\n  " +
        "    <ChildBand Name=\"ColumnHeaders\" Top=\"238.86\" Width=\"1075.03\" Height=\"42.67\">" +
        "\r\n        <LineObject Name=\"ColHdr_TopLine\" Left=\"8.33\" Top=\"0.67\" Width=\"1059.5" +
        "2\" Border.Width=\"1.5\"/>\r\n        <TextObject Name=\"hdr_SNo\" Left=\"8.33\" Top=\"2.6" +
        "7\" Width=\"33.47\" Height=\"38.67\" Border.Lines=\"Left, Right\" Text=\"S.No\" HorzAlign" +
        "=\"Center\" VertAlign=\"Center\" Font=\"Tahoma, 8pt, style=Bold\"/>\r\n        <TextObje" +
        "ct Name=\"hdr_ItemCode\" Left=\"42\" Top=\"2.67\" Width=\"67.33\" Height=\"38.67\" Border." +
        "Lines=\"Right\" Text=\"Item Code\" HorzAlign=\"Center\" VertAlign=\"Center\" Font=\"Tahom";
      reportString += "a, 8pt, style=Bold\"/>\r\n        <TextObject Name=\"hdr_ItemName\" Left=\"109.33\" Top" +
        "=\"2.67\" Width=\"245.67\" Height=\"38.67\" Border.Lines=\"Right\" Text=\"Item Name\" Horz" +
        "Align=\"Center\" VertAlign=\"Center\" Font=\"Tahoma, 8pt, style=Bold\"/>\r\n        <Tex" +
        "tObject Name=\"hdr_Unit\" Left=\"355\" Top=\"2.67\" Width=\"42\" Height=\"38.67\" Border.L" +
        "ines=\"Right\" Text=\"Unit\" HorzAlign=\"Center\" VertAlign=\"Center\" Font=\"Tahoma, 8pt" +
        ", style=Bold\"/>\r\n        <TextObject Name=\"hdr_ReqQty\" Left=\"397\" Top=\"2.67\" Wid" +
        "th=\"80\" Height=\"38.67\" Border.Lines=\"Right\" Text=\"Required Quantity\" HorzAlign=\"" +
        "Center\" VertAlign=\"Center\" Font=\"Tahoma, 8pt, style=Bold\"/>\r\n        <TextObject" +
        " Name=\"hdr_ReqDate\" Left=\"477\" Top=\"2.67\" Width=\"64\" Height=\"38.67\" Border.Lines" +
        "=\"Right\" Text=\"Required Date\" HorzAlign=\"Center\" VertAlign=\"Center\" Font=\"Tahoma" +
        ", 8pt, style=Bold\"/>\r\n        <TextObject Name=\"hdr_CurrStock\" Left=\"541\" Top=\"2" +
        ".67\" Width=\"87\" Height=\"38.67\" Border.Lines=\"Right\" Text=\"Current stock Quantity";
      reportString += "\" HorzAlign=\"Center\" VertAlign=\"Center\" Font=\"Tahoma, 8pt, style=Bold\"/>\r\n      " +
        "  <LineObject Name=\"PrevPurch_SubLine\" Left=\"628\" Top=\"21.47\" Width=\"244.67\"/>\r\n" +
        "        <TextObject Name=\"hdr_Rate\" Left=\"628\" Top=\"22.67\" Width=\"72\" Height=\"18" +
        ".67\" Border.Lines=\"Right, Bottom\" Text=\"Rate/Unit\" HorzAlign=\"Center\" VertAlign=" +
        "\"Center\" Font=\"Tahoma, 8pt, style=Bold\"/>\r\n        <TextObject Name=\"hdr_Value\" " +
        "Left=\"700\" Top=\"22.67\" Width=\"91\" Height=\"18.67\" Border.Lines=\"Right, Bottom\" Te" +
        "xt=\"Value\" HorzAlign=\"Center\" VertAlign=\"Center\" Font=\"Tahoma, 8pt, style=Bold\"/" +
        ">\r\n        <TextObject Name=\"hdr_Date\" Left=\"791\" Top=\"22.67\" Width=\"82.33\" Heig" +
        "ht=\"18.67\" Border.Lines=\"Right, Bottom\" Text=\"Date\" HorzAlign=\"Center\" VertAlign" +
        "=\"Center\" Font=\"Tahoma, 8pt, style=Bold\"/>\r\n        <TextObject Name=\"hdr_AppCos" +
        "t\" Left=\"873.33\" Top=\"2.67\" Width=\"85.67\" Height=\"38.67\" Border.Lines=\"Right\" Te" +
        "xt=\"App. Cost Value\" HorzAlign=\"Center\" VertAlign=\"Center\" Font=\"Tahoma, 8pt, st";
      reportString += "yle=Bold\"/>\r\n        <TextObject Name=\"hdr_Remarks\" Left=\"959\" Top=\"2.67\" Width=" +
        "\"108.85\" Height=\"38.67\" Border.Lines=\"Left, Right\" Text=\"Remarks\" HorzAlign=\"Cen" +
        "ter\" VertAlign=\"Center\" Font=\"Tahoma, 8pt, style=Bold\"/>\r\n        <LineObject Na" +
        "me=\"ColHdr_BotLine\" Left=\"8.33\" Top=\"41.2\" Width=\"1059.52\" Border.Width=\"1.5\"/>\r" +
        "\n        <TextObject Name=\"hdr_PrevPurch\" Left=\"628\" Top=\"1.13\" Width=\"244.67\" H" +
        "eight=\"20.79\" Border.Lines=\"Right, Top, Bottom\" Text=\"Previous Purchase Details\"" +
        " HorzAlign=\"Center\" Font=\"Tahoma, 8pt, style=Bold\"/>\r\n      </ChildBand>\r\n    </" +
        "PageHeaderBand>\r\n    <DataBand Name=\"DataDetail\" Top=\"286.87\" Width=\"1075.03\" He" +
        "ight=\"13\" DataSource=\"KSP_PurchaseReq\">\r\n      <TextObject Name=\"det_SNo\" Left=\"" +
        "8.33\" Width=\"33.47\" Height=\"13\" Border.Lines=\"All\" Border.Width=\"0.67\" Text=\"[Ro" +
        "w#]\" HorzAlign=\"Center\" Font=\"Tahoma, 8pt\"/>\r\n      <TextObject Name=\"det_ItemCo" +
        "de\" Left=\"42\" Width=\"67.33\" Height=\"13\" Border.Lines=\"Left, Right, Bottom\" Borde";
      reportString += "r.Width=\"0.67\" CanGrow=\"true\" Text=\"[KSP_PurchaseReq.ITEMCODE]\" HorzAlign=\"Cente" +
        "r\" Font=\"Tahoma, 8pt\"/>\r\n      <TextObject Name=\"det_ItemName\" Left=\"109.33\" Wid" +
        "th=\"245.67\" Height=\"13\" Border.Lines=\"Left, Right, Bottom\" Border.Width=\"0.67\" C" +
        "anGrow=\"true\" Text=\"[KSP_PurchaseReq.ITEMNAME]\" Font=\"Tahoma, 8pt\"/>\r\n      <Tex" +
        "tObject Name=\"det_UOM\" Left=\"355\" Width=\"42\" Height=\"13\" Border.Lines=\"Left, Rig" +
        "ht, Bottom\" Border.Width=\"0.67\" CanGrow=\"true\" Text=\"[KSP_PurchaseReq.UOM]\" Form" +
        "at=\"Number\" Format.UseLocale=\"true\" Format.DecimalDigits=\"2\" Font=\"Tahoma, 8pt\"/" +
        ">\r\n      <TextObject Name=\"det_ReqQty\" Left=\"397\" Width=\"80\" Height=\"13\" Border." +
        "Lines=\"Left, Right, Bottom\" Border.Width=\"0.67\" Text=\"[KSP_PurchaseReq.qtyind]\" " +
        "Format=\"Number\" Format.UseLocale=\"true\" Format.DecimalDigits=\"2\" HorzAlign=\"Righ" +
        "t\" Font=\"Tahoma, 8pt\"/>\r\n      <TextObject Name=\"det_ReqDate\" Left=\"477\" Width=\"" +
        "64\" Height=\"13\" Border.Lines=\"Left, Right, Bottom\" Border.Width=\"0.67\" Text=\"[KS";
      reportString += "P_PurchaseReq.reqddate]\" Format=\"Date\" Format.Format=\"dd/MM/yyyy\" HorzAlign=\"Cen" +
        "ter\" Font=\"Tahoma, 8pt\"/>\r\n      <TextObject Name=\"det_CurrStock\" Left=\"541\" Wid" +
        "th=\"87\" Height=\"13\" Border.Lines=\"Left, Right, Bottom\" Border.Width=\"0.67\" Text=" +
        "\"[KSP_PurchaseReq.curstock]\" HorzAlign=\"Right\" Font=\"Tahoma, 8pt\"/>\r\n      <Text" +
        "Object Name=\"det_LPORate\" Left=\"628\" Width=\"72\" Height=\"13\" Border.Lines=\"Left, " +
        "Right, Bottom\" Border.Width=\"0.67\" Text=\"[KSP_PurchaseReq.LPO_RATE]\" Format=\"Num" +
        "ber\" Format.UseLocale=\"true\" Format.DecimalDigits=\"3\" Font=\"Tahoma, 8pt\"/>\r\n    " +
        "  <TextObject Name=\"det_Value\" Left=\"700\" Width=\"91\" Height=\"13\" Border.Lines=\"L" +
        "eft, Right, Bottom\" Border.Width=\"0.67\" Text=\"[KSP_PurchaseReq.Value]\" HorzAlign" +
        "=\"Right\" Font=\"Tahoma, 8pt\"/>\r\n      <TextObject Name=\"det_LPODate\" Left=\"791\" W" +
        "idth=\"82.33\" Height=\"13\" Border.Lines=\"Left, Right, Bottom\" Border.Width=\"0.67\" " +
        "Text=\"[KSP_PurchaseReq.LPO_DATE]\" Format=\"Date\" Format.Format=\"dd/MM/yyyy\" HorzA";
      reportString += "lign=\"Center\" Font=\"Tahoma, 8pt\"/>\r\n      <TextObject Name=\"det_AppCost\" Left=\"8" +
        "73.33\" Width=\"85.67\" Height=\"13\" Border.Lines=\"Left, Right, Bottom\" Border.Width" +
        "=\"0.67\" Text=\"[KSP_PurchaseReq.APPCOST]\" Format=\"Number\" Format.UseLocale=\"true\"" +
        " Format.DecimalDigits=\"2\" HorzAlign=\"Right\" Font=\"Tahoma, 8pt\"/>\r\n      <TextObj" +
        "ect Name=\"Text1\" Left=\"959.36\" Width=\"108.49\" Height=\"13\" Border.Lines=\"Left, Ri" +
        "ght, Bottom\" Border.Width=\"0.67\" Text=\"[KSP_PurchaseReq.APPCOST]\" Format=\"Number" +
        "\" Format.UseLocale=\"true\" Format.DecimalDigits=\"2\" HorzAlign=\"Right\" Font=\"Tahom" +
        "a, 8pt\"/>\r\n      <ChildBand Name=\"DetailMachNo\" Top=\"305.2\" Width=\"1075.03\" Heig" +
        "ht=\"14.67\" Guides=\"9.45,9.45,0\">\r\n        <TextObject Name=\"mn_SNo\" Left=\"8.33\" " +
        "Width=\"33.47\" Height=\"14.67\" Border.Lines=\"All\" Border.Width=\"0.67\" Font=\"Arial," +
        " 10pt\"/>\r\n        <TextObject Name=\"mn_Code\" Left=\"42\" Width=\"67.33\" Height=\"14." +
        "67\" Border.Lines=\"All\" Border.Width=\"0.67\" Font=\"Arial, 10pt\"/>\r\n        <TextOb";
      reportString += "ject Name=\"lbl_MachNo\" Left=\"109.33\" Width=\"245.67\" Height=\"14.67\" Border.Lines=" +
        "\"All\" Border.Width=\"0.67\" Text=\"MACHINE NO.:  MK:  MODEL :  [KSP_PurchaseReq.MAC" +
        "_NO]\" Font=\"Tahoma, 8pt\"/>\r\n        <TextObject Name=\"mn_Right\" Left=\"355\" Width" +
        "=\"712.85\" Height=\"14.67\" Border.Lines=\"All\" Border.Width=\"0.67\" Font=\"Arial, 10p" +
        "t\"/>\r\n      </ChildBand>\r\n    </DataBand>\r\n    <PageFooterBand Name=\"PageFooter1" +
        "\" Top=\"325.2\" Width=\"1075.03\" Height=\"88.55\" PrintOn=\"LastPage\">\r\n      <ShapeOb" +
        "ject Name=\"Box4\" Left=\"8\" Top=\"9.45\" Width=\"1059.85\" Height=\"77.1\" Border.Width=" +
        "\"1.5\" Fill.Color=\"White\"/>\r\n      <TextObject Name=\"lbl_RequestedBy\" Left=\"56\" T" +
        "op=\"40\" Width=\"204\" Height=\"17\" Text=\"Requested By\" HorzAlign=\"Center\" Font=\"Tah" +
        "oma, 10pt, style=Bold\"/>\r\n      <TextObject Name=\"fld_RequestedByName\" Left=\"56\"" +
        " Top=\"56.53\" Width=\"204\" Height=\"16\" Text=\"[KSP_PurchaseReq.ename]\" HorzAlign=\"C" +
        "enter\" Font=\"Tahoma, 10pt\"/>\r\n      <TextObject Name=\"lbl_ApprovedBy\" Left=\"440\"";
      reportString += " Top=\"30.55\" Width=\"208\" Height=\"17\" Text=\"Approved By\" HorzAlign=\"Center\" Font=" +
        "\"Tahoma, 10pt, style=Bold\"/>\r\n      <TextObject Name=\"fld_FirstappUser\" Left=\"44" +
        "0\" Top=\"46.55\" Width=\"208\" Height=\"16\" CanGrow=\"true\" Text=\"[KSP_PurchaseReq.Fir" +
        "stappUser]\" HorzAlign=\"Center\" Font=\"Tahoma, 10pt\"/>\r\n      <TextObject Name=\"fl" +
        "d_APP1DATE\" Left=\"440\" Top=\"62.55\" Width=\"208\" Height=\"16\" Text=\"[KSP_PurchaseRe" +
        "q.APP1DATE]\" Format=\"Date\" Format.Format=\"dd/MM/yyyy\" HorzAlign=\"Center\" Font=\"T" +
        "ahoma, 10pt\"/>\r\n      <TextObject Name=\"lbl_AuthSign\" Left=\"776.87\" Top=\"30.55\" " +
        "Width=\"271.13\" Height=\"17\" Text=\"Authorised Signatory\" HorzAlign=\"Center\" Font=\"" +
        "Tahoma, 10pt, style=Bold\"/>\r\n      <TextObject Name=\"fld_FinalAppUser\" Left=\"777" +
        "\" Top=\"46.75\" Width=\"271.13\" Height=\"16\" CanGrow=\"true\" Text=\"[KSP_PurchaseReq.F" +
        "inalAppUser]\" HorzAlign=\"Center\" Font=\"Tahoma, 10pt\"/>\r\n      <TextObject Name=\"" +
        "fld_APP3DATE_ftr\" Left=\"777\" Top=\"62.55\" Width=\"271.13\" Height=\"16\" Text=\"[KSP_P";
      reportString += "urchaseReq.APP3DATE]\" Format=\"Date\" Format.Format=\"dd/MM/yyyy\" HorzAlign=\"Center" +
        "\" Font=\"Tahoma, 10pt\"/>\r\n    </PageFooterBand>\r\n  </ReportPage>\r\n</Report>\r\n";
      LoadFromString(reportString);
      InternalInit();
      
    }

    public PO_Sample()
    {
      InitializeComponent();
    }
  }
}
