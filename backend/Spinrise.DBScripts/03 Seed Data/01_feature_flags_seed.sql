INSERT INTO dbo.feature_flags (DivCode, FeatureKey, IsEnabled)
VALUES
    ('DEFAULT', 'budget_validation_enabled', 0),
    ('DEFAULT', 'sale_order_linkage_enabled', 0),
    ('DEFAULT', 'multi_division_stock_popup', 0),
    ('DEFAULT', 'pending_po_check_enabled', 0),
    ('DEFAULT', 'pending_indent_check_enabled', 0),
    ('DEFAULT', 'approval_required_before_print', 0),
    ('DEFAULT', 'rate_column_visible', 1),
    ('DEFAULT', 'backdate_allowed', 1);
