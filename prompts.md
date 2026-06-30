# Utilix MCP — Example Prompts & Skills

Once `@utilix-tech/mcp` is installed in Claude Desktop, Cursor, or another MCP client, you can use natural language to invoke any of the 95+ tools. Below are organized examples by use case.

---

## Token Management

```
Estimate how many GPT-4o tokens this text uses and what it would cost.
```
```
Trim this document to fit within 4000 tokens, cutting from the end.
```
```
Split this article into 512-token chunks with 64-token overlap for embedding.
```
```
I need to send this to Claude 3.5. How many tokens is it and what's the cost?
```
```
Trim the middle out of this document to keep both the intro and conclusion within 2000 tokens.
```

---

## Context Compression

```
Compress this HTML page to remove scripts, styles, and hidden elements before I send it to GPT.
```
```
Strip the frontmatter and collapse blank lines in this Markdown file.
```
```
Remove all null values and empty arrays from this JSON to save tokens.
```
```
Summarize this 10,000-word article down to 500 tokens using extractive summarization.
```
```
I have 5 HTML pages from a web scrape. Compress them all and tell me how much I saved.
```

---

## RAG & Retrieval

```
Rerank these 10 document chunks by relevance to my query: "how does HNSW indexing work?"
```
```
Score the relevance of this paragraph to the question "what are the pricing tiers?"
```
```
Expand my search query "machine learning model training" with synonyms and related terms.
```
```
I have these 20 chunks. Which 5 are most relevant to "deployment on Kubernetes"?
```
```
Extract all keywords from this article so I can use them as search index terms.
```

---

## Security & Compliance

```
Scan this user message for PII before I log it.
```
```
Redact all emails, phone numbers, and SSNs from this support ticket.
```
```
Check this code file for leaked API keys or passwords.
```
```
Score this user input for prompt injection risk.
```
```
I'm about to store this in a database. Does it contain any sensitive information?
```
```
Redact PII from these 5 support tickets and show me what types were found in each.
```

---

## JSON Operations

```
Format this minified JSON so I can read it.
```
```
Diff these two JSON configs and show me what changed.
```
```
Validate this data against my JSON Schema.
```
```
Fix the syntax errors in this JSON — it has trailing commas and unquoted keys.
```
```
Flatten this nested config to dot-notation keys.
```
```
Deep-merge these three JSON objects.
```
```
Extract all the JSON objects from this LLM response.
```
```
Remove the debug fields and null values from this API response JSON.
```
```
Convert this JSON to a TypeScript interface.
```
```
Convert this JSON to a Go struct.
```

---

## Text & Data Extraction

```
Extract all URLs from this HTML page.
```
```
Pull all the tables out of this HTML and give them to me as JSON arrays.
```
```
Find all email addresses, phone numbers, and IP addresses in this text.
```
```
Remove duplicate lines from this list (case-insensitive).
```
```
Sanitize this HTML to remove script tags and dangerous attributes before rendering.
```

---

## Encoding & Hashing

```
Base64-encode this string.
```
```
Decode this base64 payload.
```
```
URL-encode these query parameters.
```
```
SHA-256 hash this string.
```
```
Hash this password with bcrypt.
```
```
Verify this password against the hash.
```

---

## Code & Formatting

```
Format this SQL query.
```
```
Minify this JavaScript.
```
```
Format this GraphQL schema.
```
```
Test this regex against my sample strings and show me the matches.
```
```
Parse this .env file into key-value pairs.
```
```
Parse this Docker image reference and tell me the registry, repo, tag, and digest.
```

---

## Time & Dates

```
Convert this Unix timestamp to a human-readable date in UTC.
```
```
How many days between 2024-01-15 and 2025-06-30?
```
```
When does this cron expression next fire: "0 9 * * 1-5"?
```
```
Convert 3pm New York time to Tokyo time.
```

---

## Generators

```
Generate a UUID v4.
```
```
Generate a cryptographically secure 24-character password with symbols.
```
```
Generate a ULID.
```
```
Generate a QR code for this URL.
```
```
Generate 5 lorem ipsum paragraphs.
```

---

## API & Network

```
Decode this JWT and show me the header and payload.
```
```
Build a curl command for a POST request with these headers and JSON body.
```
```
Convert this curl command to Python requests code.
```
```
Generate a CORS configuration that allows requests from app.example.com.
```

---

## Data Formats

```
Convert this YAML to JSON.
```
```
Convert this TOML to JSON.
```
```
Convert this XML to JSON.
```
```
Validate this YAML file.
```
```
Parse this CSV and show me the first 5 rows as JSON.
```

---

## Color & CSS

```
Parse this hex color and give me the HSL and RGB values.
```
```
Check the contrast ratio between #1a1a2e and #e0e0ff — does it pass WCAG AA?
```
```
Generate a 5-color palette from this base color: #4f46e5.
```
```
Generate 10 shades of this color from light to dark.
```
```
Minify this CSS.
```
```
Generate a CSS linear gradient from purple to blue to teal.
```

---

## Multi-step Agent Skills

These are more complex prompts that chain multiple tools:

```
Take this raw HTML from a web scrape, compress it, chunk it into 256-token pieces,
and rerank the chunks by relevance to "what are the pricing tiers?"
```

```
Scan this support ticket for PII. If you find any, redact it and validate the result
contains no remaining email addresses or phone numbers.
```

```
I have two API response JSONs — before and after a deploy. Diff them, and for any
changed values, tell me if the change looks significant.
```

```
This JSON from an LLM is malformed. Fix it, validate it against the schema I'll paste,
then flatten it to dot-notation for easier debugging.
```

```
Estimate the tokens in this document. If it's over 4000 tokens, summarize it extractively
to fit. Then estimate the cost at GPT-4o rates.
```
