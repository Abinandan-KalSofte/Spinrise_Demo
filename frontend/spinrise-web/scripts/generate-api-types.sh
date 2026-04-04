#!/bin/bash

# Generate TypeScript API types from Swagger/OpenAPI
echo "🔄 Generating TypeScript API types from Swagger..."

npx orval --config orval.config.ts

if [ $? -eq 0 ]; then
    echo "✅ API types generated successfully at src/api/generated"
else
    echo "❌ Failed to generate API types"
    exit 1
fi
