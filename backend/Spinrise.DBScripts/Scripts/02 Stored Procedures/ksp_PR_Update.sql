CREATE OR ALTER PROCEDURE dbo.ksp_PR_Update
    @DivCode      VARCHAR(2),
    @PrNo         NUMERIC(6,0),
    @DepCode      VARCHAR(3),
    @DepName      VARCHAR(30)  = NULL,
    @Section      VARCHAR(20)  = NULL,
    @SubCost      NUMERIC(5,0) = NULL,
    @IType        CHAR(1)      = NULL,
    @RequisitionType VARCHAR(20) = NULL,
    @ReqName      VARCHAR(10)  = NULL,
    @RefNo        VARCHAR(20)  = NULL,
    @PoGrp        VARCHAR(5)   = NULL,
    @ScopeCode    VARCHAR(2)   = NULL,
    @SaleOrderNo  VARCHAR(25)  = NULL,
    @SaleOrderDate DATETIME    = NULL,
    @ModifiedBy   VARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE dbo.po_prh
    SET    depcode      = @DepCode,
           SECTION      = @Section,
           SubCost      = @SubCost,
           ITYPE        = @IType,
           REQNAME      = @ReqName,
           refno        = @RefNo,
           PO_GRP       = @PoGrp,
           scopecode    = @ScopeCode,
           saleorderno  = @SaleOrderNo,
           Saleorderdt  = @SaleOrderDate,
           userId       = @ModifiedBy
    WHERE  divcode = @DivCode
      AND  prno    = @PrNo
      AND  ISNULL(cancelflag, '') <> 'Y';

    SELECT @@ROWCOUNT;
END;
