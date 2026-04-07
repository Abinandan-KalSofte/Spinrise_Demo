CREATE TABLE dbo.IN_SECTION
(
    SectionCode VARCHAR(20)  NOT NULL,
    SectionName VARCHAR(100) NOT NULL,
    DepCode     VARCHAR(10)  NOT NULL,
    Active      CHAR(1)      NOT NULL CONSTRAINT DF_IN_SECTION_Active DEFAULT ('Y'),
    SeqNo       INT          NULL,
    CONSTRAINT PK_IN_SECTION PRIMARY KEY (SectionCode, DepCode)
);
