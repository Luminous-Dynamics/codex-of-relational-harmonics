import { AppProps } from "$fresh/server.ts";

export default function App({ Component }: AppProps) {
  return (
    <html lang="en">
      <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Sacred Consciousness System</title>
        <meta name="description" content="A consciousness-first communication platform built with sacred technology" />
      </head>
      <body>
        <Component />
      </body>
    </html>
  );
}