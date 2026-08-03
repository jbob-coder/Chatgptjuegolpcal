# Scan the five 108 MiB reserve files without uploading them to GitHub

This procedure uses Google Colab's free runtime to read the files directly from Google Drive. GitHub stores only the scanner and the resulting text reports.

## Safety and cost constraints

- Do not upload the `.bin` files to GitHub.
- Do not use Git LFS.
- Do not enable GitHub Actions, Codespaces, paid runners, packages, or cloud storage.
- Google Drive remains the authoritative storage location.
- Do not delete a reserve file merely because its size or name matches another file. Require complete SHA-256 equality.

## Run in Google Colab

1. Open a new Google Colab notebook while signed into the Google account that owns the Drive folder.
2. Run this cell:

```python
from google.colab import drive
drive.mount('/content/drive')
```

3. Run this cell to obtain the scanner from GitHub:

```python
!curl -fsSL \
  https://raw.githubusercontent.com/jbob-coder/Chatgptjuegolpcal/main/tools/scan_drive_108mib_colab.py \
  -o /content/scan_drive_108mib_colab.py
```

4. Run the scan. Adjust the root path only if the folder is not directly under `MyDrive`:

```python
!python /content/scan_drive_108mib_colab.py \
  "/content/drive/MyDrive/Juego de chat gpt" \
  --output "/content/drive/MyDrive/Juego de chat gpt/Jack_Wilson_World_Archive/Audit_Reports"
```

## Expected outputs

The script creates:

```text
Audit_Reports/
├── reserve_108mib_scan.json
└── reserve_108mib_scan.md
```

The reports include:

- Complete SHA-256 for every reserve file.
- Exact duplicate groups.
- File sizes and paths.
- Sampled zero-byte and `0xFF` ratios.
- Sample entropy measurements.
- A conservative content classification.

The script does not delete, modify, split, or upload the binary files.

## After execution

Commit only these two small report files to this temporary repository, or provide them to ChatGPT for review. Do not commit the `.bin` files.
