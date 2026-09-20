# Scoop Bucket

[Scoop](https://scoop.sh) bucket for command-line tools by [willibrandon](https://github.com/willibrandon).

## Usage

```powershell
scoop bucket add willibrandon https://github.com/willibrandon/scoop-bucket
scoop bucket add extras
scoop install chill
scoop install picket
scoop install scout
scoop install pgtail
scoop install dotsider
scoop install dotsider-mcp
scoop install postern
```

## Updating

```powershell
scoop update picket
scoop update chill
scoop update scout
scoop update pgtail
scoop update dotsider
scoop update dotsider-mcp
scoop update postern
```

## Available Packages

Chill supports x64 and ARM64 and installs mpv (from `extras`), yt-dlp, and Deno
as dependencies. Update the package-managed installation with `scoop update chill`.

| Package | Description |
|---------|-------------|
| [chill](https://github.com/willibrandon/chill) | Terminal lofi radio with background playback and an interactive REPL |
| [picket](https://github.com/willibrandon/picket) | Native AOT secrets scanner |
| [scout](https://github.com/willibrandon/scout) | Feature-complete port of ripgrep to .NET Native AOT |
| [pgtail](https://github.com/willibrandon/pgtail) | PostgreSQL log tailer with auto-detection and color output |
| [dotsider](https://github.com/willibrandon/dotsider) | A TUI for analyzing .NET assemblies |
| [dotsider-mcp](https://github.com/willibrandon/dotsider) | MCP server for AI-assisted .NET assembly analysis |
| [postern](https://github.com/willibrandon/postern) | Language server and checker for PostgreSQL configuration files |
