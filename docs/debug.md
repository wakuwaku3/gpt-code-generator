# debug

## vscode launch.json example

```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "Python: 現在のファイル",
      "type": "python",
      "request": "launch",
      "console": "integratedTerminal",
      // "args": [
      //   "run",
      //   "save-code-generating-precondition",
      //   "-b",
      //   "main",
      // ],
      "args": [
        "run",
        "gpt-code-generator",
        "-b",
        "main",
        "-p",
        "./dist/sample_prompt.md",
      ],
      "cwd": "${workspaceFolder}",
      "env": {
        "PYTHONPATH": "${workspaceFolder}",
      },
      "module": "poetry",
      "justMyCode": true
    }
  ]
}
```
