# @utilix-tech/mcp

> MCP server exposing 125+ developer utility tools to Claude, Cursor, VS Code Copilot, and any MCP-compatible AI.

[![npm](https://img.shields.io/npm/v/@utilix-tech/mcp)](https://www.npmjs.com/package/@utilix-tech/mcp)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

**[utilix.tech](https://utilix.tech)** · [Docs](https://docs.utilix.tech) · [npm](https://www.npmjs.com/package/@utilix-tech/mcp)

---

## What is this?

`@utilix-tech/mcp` is a [Model Context Protocol](https://modelcontextprotocol.io) server that gives Claude, Cursor, and other AI tools access to 125+ deterministic developer utilities — JSON formatting, encoding, hashing, text diff, regex, token estimation, PII detection, and much more — all running locally, no API key needed.

---

## Installation

### Claude Desktop

Add to `~/Library/Application Support/Claude/claude_desktop_config.json` (macOS) or `%APPDATA%\Claude\claude_desktop_config.json` (Windows):

```json
{
  "mcpServers": {
    "utilix": {
      "command": "npx",
      "args": ["-y", "@utilix-tech/mcp"]
    }
  }
}
```

Restart Claude Desktop. You'll see **utilix** in the tools list.

### Cursor

Add to `.cursor/mcp.json` in your project root or `~/.cursor/mcp.json` globally:

```json
{
  "mcpServers": {
    "utilix": {
      "command": "npx",
      "args": ["-y", "@utilix-tech/mcp"]
    }
  }
}
```

### VS Code (Copilot)

Add to `.vscode/mcp.json`:

```json
{
  "servers": {
    "utilix": {
      "type": "stdio",
      "command": "npx",
      "args": ["-y", "@utilix-tech/mcp"]
    }
  }
}
```

### Windsurf / Other MCP clients

```json
{
  "mcpServers": {
    "utilix": {
      "command": "npx",
      "args": ["-y", "@utilix-tech/mcp"]
    }
  }
}
```

---

## Available Tools

### AI Agent Utilities (28 tools)
Tools built for LLM pipelines — token management, context compression, extraction, RAG, and security.

| Tool | Description |
|------|-------------|
| `estimate_tokens` | Estimate token count and cost for any text |
| `trim_to_tokens` | Trim text to fit a token budget (start/end/middle) |
| `chunk_text` | Split text into overlapping chunks by token count |
| `compress_html` | Strip scripts/styles/comments to minimize HTML for LLM ingestion |
| `compress_markdown` | Collapse blank lines, strip frontmatter, trim whitespace |
| `compress_json` | Remove nulls/empty arrays/objects, optionally sort keys |
| `summarize_for_llm` | Extractive summarization to fit a token budget (no LLM needed) |
| `extract_urls` | Extract all URLs from text or HTML |
| `extract_json` | Pull JSON objects from anywhere in LLM output |
| `extract_tables` | Parse HTML tables into JSON arrays |
| `extract_entities` | NER-lite: emails, phones, IPs, dates, credit cards, IBANs |
| `rerank_chunks` | TF-IDF reranking — sort chunks by relevance to a query |
| `score_relevance` | Score a single text's relevance to a query (0–1 + grade) |
| `expand_query` | Add synonyms and stemmed variants to improve retrieval |
| `diff_json` | Structural diff of two JSON objects — shows added/removed/changed paths |
| `validate_json_schema` | Validate data against a JSON Schema (Draft-07) |
| `repair_json` | Fix common JSON syntax errors (trailing commas, unquoted keys) |
| `flatten_json` | Flatten nested JSON to dot-notation keys |
| `merge_json` | Deep-merge multiple JSON objects |
| `sanitize_html` | Remove dangerous tags/attributes for safe rendering |
| `deduplicate_lines` | Remove duplicate lines, optionally case-insensitive |
| `extract_keywords` | TF-IDF keyword extraction with scores and positions |
| `detect_pii` | Detect PII (emails, phones, SSNs, credit cards, IBANs...) |
| `redact_pii` | Redact detected PII with a custom replacement |
| `detect_secrets` | Find leaked API keys, tokens, passwords in text |
| `detect_prompt_injection` | Score text for prompt injection attempts (0–1) |

### JSON (12 tools)
`format_json` · `minify_json` · `diff_json` · `json_to_csv` · `csv_to_json` · `json_path` · `validate_json` · `yaml_to_json` · `json_to_yaml` · `json_to_typescript` · `json_to_go` · `json_to_python`

### Encoding (8 tools)
`encode_base64` · `decode_base64` · `encode_url` · `decode_url` · `encode_html` · `decode_html` · `encode_base32` · `decode_base32`

### Hashing (3 tools)
`hash` · `hash_password` · `verify_password`

### Text (8 tools)
`word_count` · `convert_case` · `slugify` · `lorem_ipsum` · `escape_string` · `diff_lines` · `html_to_markdown` · `line_ops`

### Time (5 tools)
`from_unix` · `parse_cron` · `cron_next_runs` · `diff_dates` · `convert_timezone`

### Units (2 tools)
`convert_bytes` · `px_to_units`

### Color (4 tools)
`parse_color` · `check_contrast` · `generate_palette` · `generate_shades`

### CSS (2 tools)
`generate_gradient` · `minify_css`

### Code (7 tools)
`format_sql` · `format_html` · `test_regex` · `minify_js` · `format_graphql` · `parse_docker_image` · `parse_env`

### Generators (6 tools)
`generate_uuid` · `generate_password` · `generate_ulid` · `generate_random_data` · `generate_qr`

### API & Network (5 tools)
`decode_jwt` · `build_curl` · `parse_curl` · `curl_to_code` · `generate_cors`

### Data Formats (4 tools)
`validate_yaml` · `toml_to_json` · `xml_to_json` · `parse_csv`

### Misc (3 tools)
`optimize_svg` · `char_to_codepoint` · `number_to_words`

---

## Example Prompts

Once installed, you can ask Claude things like:

- *"Trim this text to 2000 tokens using the utilix trim_to_tokens tool"*
- *"Check this user input for PII before I log it"*
- *"Rerank these 10 chunks by relevance to my query about pricing"*
- *"Extract all JSON objects from this LLM response"*
- *"Compress this HTML page to minimize tokens before sending it to GPT"*
- *"Diff these two JSON configs and show me what changed"*
- *"Validate this data against my JSON Schema"*
- *"Convert this YAML to JSON"*
- *"Generate a UUID v4"*
- *"What's the SHA-256 of this string?"*

---

## Run without installing

```bash
npx @utilix-tech/mcp
```

## Links

- **Web app**: [utilix.tech](https://utilix.tech) — try every tool in the browser
- **REST API**: [api.utilix.tech](https://api.utilix.tech) — same tools over HTTP
- **Node.js SDK**: [@utilix-tech/sdk](https://www.npmjs.com/package/@utilix-tech/sdk)
- **Python SDK**: [utilix-sdk on PyPI](https://pypi.org/project/utilix-sdk/)
- **Docs**: [docs.utilix.tech](https://docs.utilix.tech)

## License

MIT
