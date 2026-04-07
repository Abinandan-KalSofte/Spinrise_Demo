CREATE TABLE dbo.feature_flags
(
    Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    DivCode VARCHAR(10) NOT NULL,
    FeatureKey VARCHAR(100) NOT NULL,
    IsEnabled BIT NOT NULL CONSTRAINT DF_feature_flags_IsEnabled DEFAULT (0),
    CONSTRAINT UQ_feature_flags UNIQUE (DivCode, FeatureKey)
);
