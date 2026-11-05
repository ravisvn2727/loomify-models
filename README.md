# Loomify model update list

Public list of the AI models the Loomify app downloads (section 7 of the Loomify requirements).
It contains no designs and no code: only file names, versions, sizes, SHA-256 checksums, licences
and download links. Open models are linked on their public Hugging Face pages. The Loomify design
model (`sd15-loomify`, Stable Diffusion 1.5 with the owner's trained design LoRA merged) is attached
to this repository's releases.

**Licence of the Loomify design model:** proprietary, © Ravi Savani, all rights reserved; for use
only inside the Loomify app. It is additionally subject to the CreativeML OpenRAIL-M use
restrictions of the Stable Diffusion 1.5 base model (licence text included in the release).
This repository is public for now so phones can download without a login; it will become private
when the Loomify server handles downloads.

- `manifest.signed.json` — what the app reads, signed with the owner's Ed25519 key
  (keyId `83cd9c8fb394806e`). The app rejects any list whose signature does not verify.
- `manifest.json` — the same list, unsigned, for people to read.

App address: `https://raw.githubusercontent.com/ravisvn2727/loomify-models/main/manifest.signed.json`

## Publishing a new model version

1. Edit `D:\RProjects\Loomify\tools\models\models.json` (repo, file, revision of each model).
2. Run `publish.ps1` in this folder. It rebuilds the list from Hugging Face, signs it with the
   private key in `C:\ClaudeInstallationR\keys` (never commit that key), commits and pushes.
3. Phones pick up the new list within a day and download the new version on Wi-Fi.
