import { defineConfig } from 'orval';

export default defineConfig({
  api: {
    input: {
      target: 'http://localhost:5243/swagger/v1/swagger.json',
    },
    output: {
      target: 'src/api/generated',
      client: 'axios',
      httpClient: 'axios',
      mode: 'tags-split',
      baseUrl: 'http://localhost:5243',
      override: {
        mutator: {
          path: 'src/api/client.ts',
          name: 'apiClient',
        },
      },
    },
  },
});
