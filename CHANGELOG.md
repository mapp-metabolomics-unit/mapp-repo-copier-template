# Template changelog

This file records changes to the Copier template. It is not included in generated repositories.

## 0.3.1 (since 0.3.0)

- Updated the MZmine batch template to 4.11.0: revised import, peak detection, chromatogram, isotope, alignment, and row-filter settings; added duplicate filtering and batch autosave.
- Added MZmine metadata and full feature table exports, updated the GNPS and SIRIUS exports, and taught the report context to find the new full feature table.
- Excluded this template changelog from Copier-generated repositories while retaining Copier's default file exclusions.

- Synced MZmine processing settings with the supplied DBGI batch while retaining project-specific paths and the optional gap-filling step before duplicate and row filtering.
- Replaced the absolute MS1 noise-level prompt with a factor-of-lowest-signal prompt; the chromatogram minimum height now follows the batch's fixed threshold.
