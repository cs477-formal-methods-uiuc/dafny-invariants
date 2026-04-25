# dafny-invariants

Boilerplate code for assignment on writing program invariants in Dafny.

## Installing Dafny

You can use Dafny in three common ways.

### Option 1 (recommended): Install prebuilt Dafny release

1. Go to the Dafny releases page: https://github.com/dafny-lang/dafny/releases
2. Download the archive for your OS.
3. Extract it and add the Dafny executable directory to your PATH.

Example (Linux/macOS, if you extracted to `~/tools/dafny`):

```bash
echo 'export PATH="$HOME/tools/dafny:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

For zsh, use `~/.zshrc` instead of `~/.bashrc`.

4. Confirm installation:

```bash
dafny --version
```

### Option 2: Build Dafny from source

Use this if you want the latest development version.

1. Clone Dafny:

```bash
git clone https://github.com/dafny-lang/dafny.git
cd dafny
```

2. Install .NET SDK 8.x.

On Ubuntu/Debian:

```bash
sudo apt update
sudo apt install -y dotnet-sdk-8.0
```

On macOS (Homebrew):

```bash
brew install --cask dotnet-sdk
```

3. Build Dafny:

```bash
make exe
```

4. Run Dafny from the built repo:

```bash
Scripts/dafny --version
```

### Option 3: Use Dafny online (no install)

Use the web IDE: https://dafny.org/dafny/

## VS Code setup (optional)

1. Install the Dafny extension in VS Code.
2. Make sure the Dafny executable is on your PATH.

## Verify your setup on this repo

From the repository root, run:

```bash
dafny verify dafny-exercises/example.dfy
```

If that succeeds, your setup is ready for the assignment.

## Check if your annotation is correct

Use Dafny verification on the file you are working on.

For example, if your file is q3, run `dafny verify dafny-exercises/q3.dfy` from the repository root.

How to read the result:

- If Dafny reports `verified, 0 errors`, your annotations are consistent with the program 
and specification.
- If Dafny reports a postcondition, assertion, or invariant failure, the annotation is not yet 
strong enough (or is incorrect) and needs to be revised.

## Troubleshooting

- `dotnet: not found`: install .NET SDK and restart your terminal.
- SDK mismatch errors (for example from `global.json`): install the required SDK version.
- `dafny: command not found`: add the Dafny executable folder to your PATH.
