CREATE OR ALTER PROCEDURE dbo.ksp_PR_Insert
(
    @DivCode       VARCHAR(2),
    @PrNo          NUMERIC(6,0),
    @PrDate        DATETIME,
    @DepCode       VARCHAR(3),
    @Section       VARCHAR(20)  = NULL,
    @SubCost       NUMERIC(5,0) = NULL,
    @IType         CHAR(1)      = NULL,
    @ReqName       VARCHAR(10)  = NULL,
    @RefNo         VARCHAR(20)  = NULL,
    @PoGrp         VARCHAR(5)   = NULL,
    @ScopeCode     VARCHAR(2)   = NULL,
    @SaleOrderNo   VARCHAR(25)  = NULL,
    @SaleOrderDate DATETIME     = NULL,
    @CreatedBy     VARCHAR(50)
)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.po_prh
    (
        divcode,
        prno,
        prdate,
        depcode,
        SECTION,
        SubCost,
        ITYPE,
        REQNAME,
        refno,
        PO_GRP,
        scopecode,
        saleorderno,
        Saleorderdt,
        userId,
        createdby,
        createddt,
        Planno,
        amendno
    )
    VALUES
    (
        @DivCode,
        @PrNo,
        @PrDate,
        @DepCode,
        @Section,
        @SubCost,
        @IType,
        @ReqName,
        @RefNo,
        @PoGrp,
        @ScopeCode,
        @SaleOrderNo,
        @SaleOrderDate,
        @CreatedBy,
        @CreatedBy,
        CONVERT(VARCHAR(25), GETDATE(), 120),
        0,
        0
    );
END
