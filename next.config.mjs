import withPWA from "@ducanh2912/next-pwa";
import withMarkdoc from '@markdoc/next.js';
import withSearch from './src/markdoc/search.mjs';
 const withPWAMiddleware = withPWA({
  dest: "public",
  enable: process.env.NODE_ENV === "development",
   register: true,
  //
});

/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
  pageExtensions: ['js', 'jsx', 'md'],
 /*  experimental: {
    scrollRestoration: true,
  },
   */
  output:'standalone',
   distDir: '.next',
}

export default withPWAMiddleware(withSearch(
  withMarkdoc({ schemaPath: './src/markdoc' })(nextConfig)
))
